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

        const paymentData = req.body
        const isPaid =
            paymentData?.status === 'paid' ||
            paymentData?.status === 'approved'

        if (!isPaid) {
            return res.status(200).json({ ignored: true })
        }

        /**
         * ⚠️ REGRA DE OURO
         * O webhook NÃO CONFIA em txId do gateway
         * Ele SEMPRE busca o pix_pending salvo no banco
         */

        // 1️⃣ Encontrar o PIX PENDENTE REAL (ÂNCORA)
        const { data: originalLog, error: logError } = await supabase
            .from('integration_logs')
            .select('transaction_id, payload')
            .eq('integration_name', 'utmify_env')
            .eq('event_name', 'pix_pending')
            .eq('status', 'success')
            .order('created_at', { ascending: false })
            .limit(1)
            .single()

        if (logError || !originalLog) {
            console.error('[Webhook] CRITICAL: pix_pending anchor not found')
            return res.status(200).json({ error: 'pix_pending_not_found' })
        }

        const realTransactionId = originalLog.transaction_id

        // 2️⃣ Aprovar acesso do usuário (se existir intent)
        try {
            const { data: intent } = await supabase
                .from('payment_intents')
                .select('*')
                .eq('transaction_id', realTransactionId)
                .single()

            if (intent?.email) {
                await supabase.rpc('handle_payment_webhook', {
                    p_email: intent.email,
                    p_plan_slug: intent.plan_slug || 'monthly',
                    p_transaction_id: realTransactionId
                })
            }
        } catch (e) {
            console.warn('[Webhook] Payment intent not found (non-blocking)')
        }

        // 3️⃣ STRICT REPLAY PARA UTMIFY
        if (process.env.UTMIFY_API_KEY) {
            const approvedDate = formatStatsDate(new Date())

            // CLONE PERFEITO DO PAYLOAD ORIGINAL
            const replayPayload = JSON.parse(JSON.stringify(originalLog.payload))
            replayPayload.status = 'paid'
            replayPayload.approvedDate = approvedDate

            const result = await sendUtmifyOrder({
                eventName: 'webhook_paid_replay',
                rawPayload: replayPayload
            })

            // 4️⃣ Log final do pagamento
            await supabase.from('integration_logs').insert({
                transaction_id: realTransactionId,
                integration_name: 'utmify_env',
                event_name: 'purchase',
                status: result.success ? 'success' : 'failed',
                payload: result.payload,
                response: result.response || { error: result.error },
                created_at: new Date()
            })
        }

        return res.status(200).json({ success: true })

    } catch (err) {
        console.error('Webhook Error:', err)
        return res.status(500).json({ error: err.message })
    }
}
