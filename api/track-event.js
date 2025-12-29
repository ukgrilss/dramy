import { createClient } from '@supabase/supabase-js'
import { sendUtmifyOrder, formatStatsDate } from './services/utmify.js'

export default async function handler(req, res) {
    if (req.method === 'GET') {
        return res.status(200).json({ status: 'online', service: 'track-event' })
    }

    if (req.method !== 'POST') {
        return res.status(405).json({ error: 'Method not allowed' })
    }

    try {
        const supabase = createClient(
            process.env.VITE_SUPABASE_URL,
            process.env.SUPABASE_SERVICE_ROLE_KEY
        )

        const { event, userId, transactionId, payload } = req.body

        if (!event || (!userId && !transactionId)) {
            return res.status(400).json({ error: 'Missing required fields' })
        }

        /* ======================================================
           🔐 TRANSACTION ID — GATEWAY FIRST (REGRA ABSOLUTA)
        ====================================================== */
        const gatewayId =
            payload?.gateway_transaction_id ||
            payload?.payment_id ||
            payload?.pix_id

        const uniqueKey = gatewayId || transactionId || `lead_${userId}`

        /* ======================================================
           🔒 DEDUPLICAÇÃO ABSOLUTA — 1 PIX = 1 pix_pending
        ====================================================== */
        const { data: existingPix } = await supabase
            .from('integration_logs')
            .select('id')
            .eq('transaction_id', uniqueKey)
            .eq('integration_name', 'utmify_env')
            .eq('event_name', 'pix_pending')
            .eq('status', 'success')
            .limit(1)
            .single()

        if (existingPix) {
            console.log(`[TrackEvent] BLOCKED: pix_pending already exists for ${uniqueKey}`)
            return res.status(200).json({
                success: true,
                status: 'pix_pending_already_exists'
            })
        }

        /* ======================================================
           💰 FONTE ÚNICA DE VERDADE DO PREÇO (BANCO)
        ====================================================== */
        const planSlug = payload?.plan_slug || 'monthly'

        const { data: plan } = await supabase
            .from('plans') // ⚠️ ajuste se sua tabela tiver outro nome
            .select('price_cents')
            .eq('slug', planSlug)
            .single()

        if (!plan || plan.price_cents <= 0) {
            throw new Error(`CRITICAL: Plano inválido ou sem preço (${planSlug})`)
        }

        const valueInCents = plan.price_cents

        /* ======================================================
           📦 UTMify
        ====================================================== */
        if (process.env.UTMIFY_API_KEY) {
            const now = new Date()
            const createdAt = formatStatsDate(now)

            const safeIp =
                req.headers['x-forwarded-for']?.split(',')[0] ||
                req.socket?.remoteAddress ||
                '127.0.0.1'

            const customer = {
                name: payload?.name || 'Cliente',
                email: payload?.email,
                phone: payload?.phone,
                document: payload?.document,
                ip: payload?.client_ip || safeIp
            }

            const utm = {
                utm_source: payload?.utm_source,
                utm_campaign: payload?.utm_campaign,
                utm_medium: payload?.utm_medium,
                utm_content: payload?.utm_content,
                utm_term: payload?.utm_term
            }

            const result = await sendUtmifyOrder({
                orderId: uniqueKey,
                status: 'waiting_payment',
                valueInCents,
                createdAt,
                approvedDate: null,
                customer,
                utm,
                eventName: 'pix_pending'
            })

            await supabase.from('integration_logs').insert({
                transaction_id: uniqueKey,
                integration_name: 'utmify_env',
                event_name: 'pix_pending',
                status: result.success ? 'success' : 'failed',
                payload: result.payload,
                response: result.response || { error: result.error },
                created_at: new Date()
            })

            console.log('[TrackEvent] pix_pending saved successfully')
        }

        return res.status(200).json({ success: true })

    } catch (err) {
        console.error('Track API Error:', err)
        return res.status(500).json({ error: err.message })
    }
}
