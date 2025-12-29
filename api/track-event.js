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
           🔒 DEDUPLICAÇÃO — SOMENTE PARA pix_pending
        ====================================================== */
        if (event === 'pix_pending' || event === 'waiting_payment') {
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
                return res.status(200).json({
                    success: true,
                    status: 'pix_pending_already_exists'
                })
            }
        }

        /* ======================================================
           ⚡ INITIATE CHECKOUT — S2S (UTMify)
        ====================================================== */
        if (event === 'initiate_checkout') {
            if (process.env.UTMIFY_API_KEY) {
                const createdAt = formatStatsDate(new Date())

                await sendUtmifyOrder({
                    orderId: `ic_${userId}_${Date.now()}`,
                    status: 'initiate_checkout',
                    valueInCents: 0,
                    createdAt,
                    approvedDate: null,
                    customer: {
                        name: payload?.name,
                        email: payload?.email,
                        ip:
                            payload?.client_ip ||
                            req.headers['x-forwarded-for']?.split(',')[0] ||
                            req.socket?.remoteAddress ||
                            '127.0.0.1'
                    },
                    utm: {
                        utm_source: payload?.utm_source,
                        utm_campaign: payload?.utm_campaign,
                        utm_medium: payload?.utm_medium,
                        utm_content: payload?.utm_content,
                        utm_term: payload?.utm_term
                    },
                    eventName: 'initiate_checkout'
                })
            }

            return res.status(200).json({ success: true })
        }

        /* ======================================================
           💰 VALOR — PRIORIDADE ABSOLUTA DO PIX
        ====================================================== */
        let valueInCents = null

        // 1️⃣ PRIORIDADE: valor REAL do PIX
        if (payload?.value && Number(payload.value) > 0) {
            valueInCents = Math.round(Number(payload.value) * 100)
        }

        // 2️⃣ FALLBACK: valor do plano (somente se PIX não tiver valor)
        if (!valueInCents) {
            let planSlug =
                payload?.plan_slug ||
                payload?.plan ||
                payload?.metadata?.plan_slug

            if (!planSlug && uniqueKey) {
                const { data: intent } = await supabase
                    .from('payment_intents')
                    .select('plan_slug')
                    .eq('transaction_id', uniqueKey)
                    .single()

                planSlug = intent?.plan_slug
            }

            if (!planSlug) {
                throw new Error('CRITICAL: plan_slug não encontrado')
            }

            const { data: plan } = await supabase
                .from('plans')
                .select('price')
                .eq('slug', planSlug)
                .single()

            if (!plan || !plan.price || Number(plan.price) <= 0) {
                throw new Error(`CRITICAL: Plano inválido ou sem preço (${planSlug})`)
            }

            valueInCents = Math.round(Number(plan.price) * 100)
        }

        /* ======================================================
           📦 UTMify
        ====================================================== */
        if (process.env.UTMIFY_API_KEY) {
            const createdAt = formatStatsDate(new Date())

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

            const utmifyStatus =
                event === 'purchase' || event === 'subscription_active'
                    ? 'paid'
                    : 'waiting_payment'

            const logEventName =
                utmifyStatus === 'waiting_payment' ? 'pix_pending' : event

            const result = await sendUtmifyOrder({
                orderId: uniqueKey,
                status: utmifyStatus,
                valueInCents,
                createdAt,
                approvedDate: utmifyStatus === 'paid' ? createdAt : null,
                customer,
                utm,
                eventName: logEventName
            })

            await supabase.from('integration_logs').insert({
                transaction_id: uniqueKey,
                integration_name: 'utmify_env',
                event_name: logEventName,
                status: result.success ? 'success' : 'failed',
                payload: result.payload,
                response: result.response || { error: result.error },
                created_at: new Date()
            })
        }

        return res.status(200).json({ success: true })
    } catch (err) {
        console.error('Track API Error:', err)
        return res.status(500).json({ error: err.message })
    }
}
