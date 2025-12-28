
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
                // Approval Date is Now
                const now = new Date()
                const approvedDate = formatStatsDate(now)

                // STRATEGY: STRICT LOG REPLAY
                // 1. Try to find original payload
                let replayPayload = null

                try {
                    const { data: originalLog } = await supabase
                        .from('integration_logs')
                        .select('payload')
                        .eq('transaction_id', txId)
                        .eq('integration_name', 'utmify_env')
                        .neq('event_name', 'purchase')
                        .order('created_at', { ascending: true })
                        .limit(1)
                        .single()

                    if (originalLog && originalLog.payload) {
                        console.log('[Webhook] Found original payload for Replay')
                        // CLONE
                        replayPayload = JSON.parse(JSON.stringify(originalLog.payload))

                        // UPDATE ONLY STATUS & DATE
                        replayPayload.status = 'paid'
                        replayPayload.approvedDate = approvedDate
                    }
                } catch (lookupErr) {
                    console.warn('[Webhook] Failed to lookup/replay original log:', lookupErr.message)
                }

                let result

                if (replayPayload) {
                    // PATH A: Strict Replay (Preferred)
                    // The payload is already perfect (same products, same commission, same everything).
                    // Just updated status.
                    result = await sendUtmifyOrder({
                        eventName: 'webhook_paid_replay',
                        rawPayload: replayPayload
                    })
                } else {
                    // PATH B: Fallback Construction (If log missing)
                    // Must reconstruct manually as per original logic, but we prefer Replay.

                    const valueInCents = Math.round((paymentData.amount || (intent?.amount || 0) * 100))
                    const userIp = intent?.ip_address || '127.0.0.1'
                    // Fallback createdAt determination
                    const createdDateObj = intent?.created_at ? new Date(intent.created_at) : new Date()
                    const fallbackCreatedAt = formatStatsDate(createdDateObj)

                    const customer = {
                        name: 'Cliente',
                        email: userEmail,
                        phone: intent?.phone || null,
                        document: null,
                        ip: userIp
                    }

                    const utm = {
                        utm_source: intent?.utm_source,
                        utm_campaign: intent?.utm_campaign,
                        utm_medium: intent?.utm_medium,
                        utm_content: intent?.utm_content,
                        utm_term: intent?.utm_term
                    }

                    result = await sendUtmifyOrder({
                        orderId: txId,
                        status: 'paid',
                        valueInCents: valueInCents,
                        createdAt: fallbackCreatedAt,
                        approvedDate: approvedDate,
                        customer,
                        utm,
                        eventName: 'webhook_paid_fallback'
                    })
                }

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
