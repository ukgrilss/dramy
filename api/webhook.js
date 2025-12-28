
import { createClient } from '@supabase/supabase-js'
import { sendUtmifyOrder, formatStatsDate } from './services/utmify.js'

export default async function handler(req, res) {
    if (req.method === 'GET') return res.status(200).json({ status: 'online' })
    if (req.method !== 'POST') return res.status(405).json({ error: 'Method not allowed' })

    try {
        const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.SUPABASE_SERVICE_ROLE_KEY)
        const paymentData = req.body

        // Transaction ID (PushinPay)
        const txId = paymentData.id || paymentData.data?.id
        const isPaid = paymentData.status === 'paid' || paymentData.status === 'approved'

        if (isPaid && txId) {
            // 1. LOOKUP INTENT + UTMs
            const { data: intent, error: intentError } = await supabase
                .from('payment_intents')
                .select('*')
                .eq('transaction_id', txId.toLowerCase())
                .single()

            if (!intent) {
                console.error('[WebHook] Intent not found for:', txId)
                // Fallback or Error? User script implies RE-SENDING same order. 
                // If we don't have intent, we might lack UTMs. But user demands "Strict Payload".
                // We will try to proceed with metadata if available or defaults.
            }

            const userEmail = intent?.email || paymentData.metadata?.email
            const planSlug = intent?.plan_slug || 'monthly'

            if (!userEmail) throw new Error("CRITICAL: User unidentified in Webhook")

            // 2. APPROVE ACCESS
            await supabase.rpc('handle_payment_webhook', {
                p_email: userEmail,
                p_plan_slug: planSlug,
                p_transaction_id: txId
            })

            // 3. PROCESS INTEGRATIONS (UTMify)
            if (process.env.UTMIFY_API_KEY) {
                // Determine Creation Date
                // CRITICAL: Must match the original PIX generation date if possible.
                // If intent exists, use intent.created_at. Else use current timestamp (fallback).
                const createdDateObj = intent?.created_at ? new Date(intent.created_at) : new Date()
                const createdAt = formatStatsDate(createdDateObj)

                // Approval Date is Now
                const now = new Date()
                const approvedDate = formatStatsDate(now)

                const valueInCents = Math.round((paymentData.amount || (intent?.amount || 0) * 100))

                // Prepare Customer
                const customer = {
                    name: 'Cliente', // Webhook usually lacks name
                    email: userEmail,
                    phone: intent?.phone || null,
                    document: null,
                    ip: intent?.ip_address || null
                }

                // Prepare UTMs (From Intent)
                const utm = {
                    utm_source: intent?.utm_source,
                    utm_campaign: intent?.utm_campaign,
                    utm_medium: intent?.utm_medium,
                    utm_content: intent?.utm_content,
                    utm_term: intent?.utm_term
                }

                // Call Service
                const result = await sendUtmifyOrder({
                    orderId: txId, // MUST match original
                    status: 'paid',
                    valueInCents: valueInCents,
                    createdAt: createdAt, // Consistency Check
                    approvedDate: approvedDate,
                    customer,
                    utm,
                    eventName: 'webhook_paid'
                })

                // Log Result
                await supabase.from('integration_logs').insert({
                    transaction_id: txId,
                    integration_name: 'utmify_env',
                    event_name: 'purchase', // Standardize event name for dashboard? 'paid' is status.
                    status: result.success ? 'success' : 'failed',
                    payload: result.payload,
                    response: result.response || { error: result.error }
                })
            }
        }

        return res.status(200).json({ success: true })

    } catch (err) {
        console.error('Webhook Error:', err)
        return res.status(500).json({ error: err.message })
    }
}
