
import { createClient } from '@supabase/supabase-js'

export default async function handler(req, res) {
    // 1. GET Request: Browser Check for Vercel Env Vars
    if (req.method === 'GET') {
        return res.status(200).json({
            status: 'online',
            env_check: {
                VITE_SUPABASE_URL: !!process.env.VITE_SUPABASE_URL ? 'OK' : 'MISSING',
                SUPABASE_SERVICE_ROLE_KEY: !!process.env.SUPABASE_SERVICE_ROLE_KEY ? 'OK' : 'MISSING'
            }
        })
    }

    if (req.method !== 'POST') {
        return res.status(405).json({ error: 'Method not allowed' })
    }

    try {
        const supabaseUrl = process.env.VITE_SUPABASE_URL
        const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY

        if (!supabaseUrl || !supabaseServiceKey) {
            console.error('SERVER ERROR: Missing Env Vars')
            return res.status(500).json({ error: 'Server Config Error: Missing Service Key' })
        }

        const supabase = createClient(supabaseUrl, supabaseServiceKey)
        const paymentData = req.body

        // PushinPay sends 'id' as the Transaction ID
        const txId = paymentData.id || paymentData.data?.id

        // 3. LOG RAW REQUEST (Crucial for debugging)
        try {
            await supabase.from('webhook_logs').insert({
                method: 'POST',
                payload: paymentData,
                status: 'received_v3_final'
            })
        } catch (e) { }

        const isPaid = paymentData.status === 'paid' || paymentData.status === 'approved'

        if (isPaid && txId) {
            let userEmail = null
            let planSlug = 'monthly'

            // 4. LOOKUP INTENT
            // Force Lowercase comparison because PushinPay sends Upper and DB has Lower
            const { data: intent, error: intentError } = await supabase
                .from('payment_intents')
                .select('*')
                .eq('transaction_id', txId.toLowerCase())
                .single()

            if (intent) {
                userEmail = intent.email
                planSlug = intent.plan_slug

                // Log Success Finding User
                await supabase.from('webhook_logs').insert({
                    status: 'intent_found',
                    payload: { txId, email: userEmail, plan: planSlug }
                })

            } else {
                // Log Failure Finding User
                await supabase.from('webhook_logs').insert({
                    status: 'intent_missing',
                    payload: { txId, error: intentError?.message }
                })

                // Fallback: Try to find email in metadata (usually stripped by Gateway, but worth a try)
                userEmail = paymentData.metadata?.email || paymentData.payer_email
            }

            if (!userEmail) {
                throw new Error(`CRITICAL: Could not identify user for Payment ID ${txId}. Intent missing and no email in payload.`)
            }

            // 5. APPROVE ACCESS
            const { error } = await supabase.rpc('handle_payment_webhook', {
                p_email: userEmail,
                p_plan_slug: planSlug,
                p_transaction_id: txId
            })

            if (error) throw error

            // Log Final Success
            await supabase.from('webhook_logs').insert({
                status: 'success_approved_final',
                payload: { email: userEmail, txId }
            })


            // =================================================================================
            // 6. PROCESS INTEGRATIONS (UTMify, etc.)
            // Logic: Backend only execution, Idempotency check, Error isolation
            // =================================================================================
            try {
                // A. Fetch Enabled Integrations
                const { data: activeIntegrations } = await supabase
                    .from('integrations')
                    .select('*')
                    .eq('enabled', true)

                if (activeIntegrations && activeIntegrations.length > 0) {

                    // ⚡ FETCH UTMs FROM PROFILE (Since we saved them at Registration)
                    // This ensures we have the original attribution source even for the purchase event
                    let profileUtms = {}
                    if (userEmail) {
                        const { data: pData } = await supabase
                            .from('profiles')
                            .select('utm_source, utm_medium, utm_campaign, utm_content, utm_term, phone')
                            .eq('email', userEmail)
                            .single()
                        if (pData) profileUtms = pData
                    }

                    // Fetch full intent data including UTMs if not already strictly present
                    const conversionData = {
                        transaction_id: txId,
                        value: paymentData.value ? (paymentData.value / 100) : 0, // Convert cents to real
                        currency: 'BRL',
                        email: userEmail,
                        phone: profileUtms.phone || intent?.phone || '',
                        utm_source: profileUtms.utm_source || intent?.utm_source || '',
                        utm_campaign: profileUtms.utm_campaign || intent?.utm_campaign || '',
                        utm_medium: profileUtms.utm_medium || intent?.utm_medium || '',
                        utm_content: profileUtms.utm_content || intent?.utm_content || '',
                        utm_term: profileUtms.utm_term || intent?.utm_term || '',
                        client_ip: intent?.ip_address || ''
                    }

                    // Events to consider sending in this Webhook context
                    const eventsToSend = ['purchase', 'subscription_active']

                    for (const integration of activeIntegrations) {
                        let enabledEvents = integration.enabled_events

                        // 🛡️ FALLBACK: If column is missing, enable ALL
                        if (!enabledEvents) {
                            enabledEvents = ['purchase', 'subscription_active']
                        }

                        for (const eventName of eventsToSend) {

                            // Check if event is enabled for this integration
                            if (!enabledEvents.includes(eventName)) continue

                            // B. IDEMPOTENCY CHECK
                            const { data: existingLog } = await supabase
                                .from('integration_logs')
                                .select('id')
                                .eq('transaction_id', txId)
                                .eq('integration_name', integration.name)
                                .eq('event_name', eventName)
                                .eq('status', 'success')
                                .single()

                            if (existingLog) {
                                console.log(`Skipping ${integration.name}:${eventName} for ${txId} - Already Sent`)
                                continue
                            }

                            // C. SEND TO UTMIFY
                            if (integration.name === 'utmify') {
                                const config = integration.config
                                // ⚙️ SPECS: Configurable Endpoint
                                const endpoint = config.endpoint || process.env.UTMIFY_ENDPOINT || 'https://api.utmify.com.br/api/orders'

                                const valueInCents = Math.round((conversionData.value || 0) * 100)

                                let orderStatus = 'paid' // Webhooks are usually for paid/approved
                                if (eventName === 'pix_created') orderStatus = 'waiting_payment'

                                // 📦 STRICT PAYLOAD (As per Senior Dev Spec)
                                const payload = {
                                    event: eventName, // "event" field
                                    platform: 'Custom',
                                    orderId: conversionData.transaction_id,
                                    paymentMethod: 'pix',
                                    status: orderStatus,
                                    totalPriceInCents: valueInCents,
                                    customer: {
                                        email: conversionData.email,
                                        phone: conversionData.phone,
                                        ip: conversionData.client_ip || null
                                    },
                                    trackingParameters: {
                                        utm_source: conversionData.utm_source || null,
                                        utm_campaign: conversionData.utm_campaign || null,
                                        utm_medium: conversionData.utm_medium || null,
                                        utm_content: conversionData.utm_content || null,
                                        utm_term: conversionData.utm_term || null
                                    }
                                }

                                // 🚀 SEND REQUEST
                                const response = await fetch(endpoint, {
                                    method: 'POST',
                                    headers: {
                                        'Content-Type': 'application/json',
                                        'Authorization': `Bearer ${config.api_key}` // ⚠️ CHANGED TO BEARER
                                    },
                                    body: JSON.stringify(payload)
                                })

                                const respJson = await response.json().catch(() => ({}))
                                const success = response.ok

                                // D. LOG RESULT
                                await supabase.from('integration_logs').insert({
                                    transaction_id: txId,
                                    integration_name: integration.name,
                                    event_name: eventName,
                                    status: success ? 'success' : 'failed',
                                    payload: payload,
                                    response: respJson
                                })
                            }
                            // Add other integrations here
                        }
                    }
                }
            } catch (integrationError) {
                // Never block the payment success response because of integration failure
                console.error('Integration Error:', integrationError)
                await supabase.from('webhook_logs').insert({
                    status: 'integration_error',
                    payload: { error: integrationError.message, txId }
                })
            }

        }

        return res.status(200).json({ success: true })

    } catch (err) {
        console.error('Webhook Error:', err)
        // Log Crash
        try {
            const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.SUPABASE_SERVICE_ROLE_KEY)
            await supabase.from('webhook_logs').insert({
                status: 'function_crash',
                error_message: err.message
            })
        } catch (e) { }
        return res.status(500).json({ error: err.message })
    }
}
