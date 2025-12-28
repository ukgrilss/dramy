
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
                        // STRICT RULE: Only Replay 'pix_pending' that was SUCCESSFUL
                        .eq('event_name', 'pix_pending')
                        .eq('status', 'success')
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
                    // PATH A: Strict Replay (Only Allowed Path)
                    // The payload is already perfect (same products, same commission, same everything).
                    // Just updated status.
                    result = await sendUtmifyOrder({
                        eventName: 'webhook_paid_replay',
                        rawPayload: replayPayload
                    })
                } else {
                    // PATH B: BLOCKED 🛑
                    // We cannot reconstruct financial data safely without the original log.
                    // Sending fake data (0 commission) breaks the integration logic.
                    // Better to fail and debug than to send garbage.
                    console.error(`[Webhook] CRITICAL: Strict Replay Failed for ${txId}. Original 'pix_pending' log not found/failed.`)
                    // We define result as error to log it in integration_logs
                    result = {
                        success: false,
                        error: 'strict_replay_failed_no_log',
                        payload: null
                    }
                }

                // Log Result
                await supabase.from('integration_logs').insert({
                    transaction_id: txId,
                    integration_name: 'utmify_env',
                    event_name: 'purchase', // Standardize event name for dashboard? 'paid' is status.
                    status: result.success ? 'success' : 'failed',
                    payload: result.payload || { error: 'no_payload_generated' },
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
