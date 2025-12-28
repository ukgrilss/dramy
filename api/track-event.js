
import { createClient } from '@supabase/supabase-js'

export default async function handler(req, res) {
    // 1. GET Request: Browser Check for Vercel Env Vars
    if (req.method === 'GET') {
        return res.status(200).json({
            status: 'online',
            service: 'track-event',
            env_check: {
                VITE_SUPABASE_URL: !!process.env.VITE_SUPABASE_URL ? 'OK' : 'MISSING',
                SUPABASE_SERVICE_ROLE_KEY: !!process.env.SUPABASE_SERVICE_ROLE_KEY ? 'OK' : 'MISSING'
            }
        })
    }

    // 2. Method Check
    if (req.method !== 'POST') {
        return res.status(405).json({ error: 'Method not allowed' })
    }

    try {
        const supabaseUrl = process.env.VITE_SUPABASE_URL
        const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY

        if (!supabaseUrl || !supabaseServiceKey) {
            return res.status(500).json({ error: 'Server Config Error' })
        }

        const supabase = createClient(supabaseUrl, supabaseServiceKey)
        const { event, userId, transactionId, payload } = req.body

        if (!event || (!userId && !transactionId)) {
            return res.status(400).json({ error: 'Missing required fields' })
        }

        // 2. Fetch Active Integrations
        const { data: activeIntegrations } = await supabase
            .from('integrations')
            .select('*')
            .eq('enabled', true)

        if (!activeIntegrations || activeIntegrations.length === 0) {
            return res.status(200).json({ success: true, message: 'No active integrations' })
        }

        // 2a. Fetch User Profile if userId is present (to get phone, name, document)
        let userProfile = {}
        if (userId) {
            const { data: profile } = await supabase
                .from('profiles')
                .select('name, phone, cpf, email') // fetching email just to be safe
                .eq('id', userId)
                .single()
            if (profile) userProfile = profile
        }

        // 3. Process Each Integration
        const results = []

        for (const integration of activeIntegrations) {
            // Check if this specific event is enabled for this integration
            let enabledEvents = integration.enabled_events

            // 🛡️ FALLBACK: If column is missing (migration not run), default to ALL enabled
            if (!enabledEvents) {
                enabledEvents = ['purchase', 'pix_created', 'lead_created', 'pix_pending', 'subscription_active']
            }

            if (!enabledEvents.includes(event)) {
                results.push({ name: integration.name, status: `skipped_disabled_event_${event}` })
                continue
            }

            // IDEMPOTENCY CHECK
            // We use a composite key of transactionId (or "lead_userId") + event + integration
            const uniqueKey = transactionId || `lead_${userId}`

            const { data: existingLog } = await supabase
                .from('integration_logs')
                .select('id')
                .eq('transaction_id', uniqueKey)
                .eq('integration_name', integration.name)
                .eq('event_name', event)
                .eq('status', 'success')
                .single()

            if (existingLog) {
                results.push({ name: integration.name, status: 'idempotent_skip' })
                continue
            }

            // SEND TO UTMIFY
            if (integration.name === 'utmify') {
                try {
                    const config = integration.config
                    const valueInCents = Math.round((payload?.value || 0) * 100)
                    const nowIso = new Date().toISOString()

                    // Determine Status based on event
                    let orderStatus = 'pending'
                    if (event === 'purchase' || event === 'subscription_active') orderStatus = 'paid'

                    // 🛡️ Robust Customer Data Construction
                    const customerName = payload?.name || userProfile.name || 'Cliente'
                    const customerEmail = payload?.email || userProfile.email || 'email@naoinformado.com'
                    const customerPhone = payload?.phone || userProfile.phone || '5511999999999' // Fallback required by UTMify
                    const customerDoc = payload?.document || userProfile.cpf || null

                    const trackPayload = {
                        platform: 'PushinPay',
                        orderId: transactionId,
                        paymentMethod: 'pix',
                        status: orderStatus,
                        approvedDate: nowIso,
                        createdAt: nowIso,
                        token: config.api_key, // Keep in body just in case
                        customer: {
                            name: customerName,
                            email: customerEmail,
                            phone: customerPhone,
                            document: customerDoc,
                            ip: payload?.client_ip || '127.0.0.1'
                        },
                        products: [{
                            planId: 'plan_1',
                            id: 'plan_1',
                            planName: 'Assinatura',
                            name: 'Assinatura',
                            priceInCents: valueInCents,
                            quantity: 1
                        }],
                        commission: {
                            userCommissionInCents: 0,
                            platformCommissionInCents: 0,
                            gatewayFeeInCents: 0,
                            totalPriceInCents: valueInCents
                        },
                        trackingParameters: {
                            utm_source: payload?.utm_source || null,
                            utm_campaign: payload?.utm_campaign || null,
                            utm_medium: payload?.utm_medium || null,
                            utm_content: payload?.utm_content || null,
                            utm_term: payload?.utm_term || null
                        }
                    }

                    // 9. CORRECT ENDPOINT
                    const response = await fetch('https://api.utmify.com.br/api-credentials/orders', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'x-api-token': config.api_key
                        },
                        body: JSON.stringify(trackPayload)
                    })

                    const respJson = await response.json().catch(() => ({}))
                    const success = response.ok

                    // Log Result
                    await supabase.from('integration_logs').insert({
                        transaction_id: uniqueKey,
                        integration_name: integration.name,
                        event_name: event,
                        status: success ? 'success' : 'failed',
                        payload: trackPayload,
                        response: respJson
                    })

                    results.push({ name: integration.name, status: success ? 'sent' : 'failed' })

                } catch (err) {
                    console.error('Integration Error:', err)
                    results.push({ name: integration.name, status: 'error', error: err.message })
                }
            }
        }

        return res.status(200).json({ success: true, results })

    } catch (err) {
        console.error('Track API Error:', err)
        return res.status(500).json({ error: err.message })
    }
}
