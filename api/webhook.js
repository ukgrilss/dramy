import { createClient } from '@supabase/supabase-js'
import { sendUtmifyOrder, formatStatsDate } from './services/utmify.js'
import { activateSubscription } from './services/subscription.js'

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
        console.log('[Webhook] Received:', JSON.stringify(payload, null, 2))

        // SyncPay Payload Format: { data: { id, status, client... } }
        const data = payload.data || payload // Handle checking nested data or root

        if (!data || !data.id) {
            return res.status(200).json({ error: 'invalid_payload' })
        }

        const transactionId = data.id
        const status = data.status // 'completed', 'paid', 'pending'

        const isPaid = status === 'completed' || status === 'paid'

        if (!isPaid) {
            console.log(`[Webhook] Ignored status: ${status} for ${transactionId}`)
            return res.status(200).json({ ignored: true, status })
        }

        console.log(`[Webhook] Processing Payment: ${transactionId}`)

        // 1. Find Intent by Transaction ID
        const { data: intent, error: intentError } = await supabase
            .from('payment_intents')
            .select('*')
            .eq('transaction_id', transactionId)
            .single()

        if (intentError || !intent) {
            console.error('[Webhook] Intent not found for transaction:', transactionId)
            // Ideally we should log this to database
            await supabase.from('integration_logs').insert({
                integration_name: 'syncpay_webhook_orphan',
                event_name: 'orphan_transaction',
                status: 'warning',
                payload: payload,
                created_at: new Date()
            })
            return res.status(200).json({ error: 'intent_not_found' })
        }

        // 2. Activate Subscription
        try {
            await activateSubscription(
                supabase,
                intent.email,
                intent.plan_slug || 'monthly',
                transactionId,
                intent.user_id // Pass user_id directly
            )
            console.log('[Webhook] Approved:', intent.email)
        } catch (subError) {
            console.error('[Webhook] Activation Error:', subError)
            return res.status(500).json({ error: 'approval_failed' })
        }

        // 3. Notify Utmify
        if (process.env.UTMIFY_API_KEY) {
            try {
                const approvedDate = formatStatsDate(new Date())
                await sendUtmifyOrder({
                    orderId: intent.id,
                    status: 'paid',
                    valueInCents: intent.amount || 0,
                    createdAt: formatStatsDate(intent.created_at || new Date()),
                    approvedDate: approvedDate,
                    customer: {
                        email: intent.email,
                        ip: '127.0.0.1'
                    },
                    utm: {},
                    eventName: 'webhook_purchase'
                })
            } catch (ignore) { }
        }

        // 4. Update Intent Status
        await supabase
            .from('payment_intents')
            .update({ status: 'paid', updated_at: new Date() })
            .eq('id', intent.id)

        return res.status(200).json({ success: true })

    } catch (err) {
        console.error('[Webhook] Server Error:', err)
        return res.status(500).json({ error: err.message })
    }
}
