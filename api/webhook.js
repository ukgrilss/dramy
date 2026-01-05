import { createClient } from '@supabase/supabase-js'
import { sendUtmifyOrder, formatStatsDate } from './services/utmify.js'

export default async function handler(req, res) {
    if (req.method === 'GET') {
        return res.status(200).json({ status: 'online', service: 'webhook' })
    }

    if (req.method !== 'POST') {
        return res.status(405).json({ error: 'Method not allowed' })
    }

    try {
        const supabase = createClient(
            process.env.VITE_SUPABASE_URL,
            process.env.SUPABASE_SERVICE_ROLE_KEY
        )

        const payload = req.body
        console.log('[Webhook] Received Payload:', JSON.stringify(payload, null, 2))

        // PushinPay Status
        const status = payload.status
        const isPaid = status === 'paid' || status === 'approved'

        if (!isPaid) {
            console.log('[Webhook] Ignored status:', status)
            return res.status(200).json({ ignored: true, status })
        }

        // Extract Intent ID (Metadata)
        const intentId = payload.metadata?.intent_id || payload.metadata?.intention_id

        if (!intentId) {
            console.error('[Webhook] Missing intent_id in metadata')
            // Don't error out, maybe we can find by transaction_id?
            // But for now, we rely on metadata we sent.
            return res.status(200).json({ error: 'partial_data' })
        }

        console.log('[Webhook] Processing Payment for Intent:', intentId)

        // 1. Get Payment Intent from DB
        const { data: intent, error: intentError } = await supabase
            .from('payment_intents')
            .select('*')
            .eq('id', intentId)
            .single()

        if (intentError || !intent) {
            console.error('[Webhook] Intent not found in DB:', intentId)
            // It might be a test payment or mismatched DB
            return res.status(200).json({ error: 'intent_not_found' })
        }

        // 2. Approve Access (Set subscription_active = true)
        const { error: rpcError } = await supabase.rpc('handle_payment_webhook', {
            p_email: intent.email,
            p_plan_slug: intent.plan_slug || 'monthly',
            p_transaction_id: payload.id || intentId
        })

        if (rpcError) {
            console.error('[Webhook] RPC Error:', rpcError)
            return res.status(500).json({ error: 'approval_failed' })
        }

        console.log('[Webhook] Access Approved for:', intent.email)

        // 3. Notify Utmify (Server-side Purchase Event)
        if (process.env.UTMIFY_API_KEY) {
            try {
                const approvedDate = formatStatsDate(new Date())
                // Use intent.amount (which is in cents) 
                // sendUtmifyOrder expects cents.

                await sendUtmifyOrder({
                    orderId: intentId, // Keep consistent with checkout
                    status: 'paid',
                    valueInCents: intent.amount || 0,
                    createdAt: formatStatsDate(intent.created_at || new Date()),
                    approvedDate: approvedDate,
                    customer: {
                        email: intent.email,
                        ip: '127.0.0.1' // Webhook doesn't have user IP
                    },
                    utm: {}, // We can't easily get UTMs here unless stored in intent
                    eventName: 'webhook_purchase'
                })
                console.log('[Webhook] Utmify Notified')
            } catch (utmError) {
                console.error('[Webhook] Utmify Error:', utmError)
            }
        }

        // 4. Update Intent Status
        await supabase
            .from('payment_intents')
            .update({
                status: 'paid',
                transaction_id: payload.id
            })
            .eq('id', intentId)

        return res.status(200).json({ success: true })

    } catch (err) {
        console.error('[Webhook] Server Error:', err)
        return res.status(500).json({ error: err.message })
    }
}
