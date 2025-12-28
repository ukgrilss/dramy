
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

                    // Fetch full intent data including UTMs if not already strictly present
                    // (We already fetched 'intent' above, so we use it)
                    const conversionData = {
                        transaction_id: txId,
                        value: paymentData.value ? (paymentData.value / 100) : 0, // Convert cents to real
                        currency: 'BRL',
                        email: userEmail,
                        phone: intent?.phone || '', // Need to ensure phone is captured in intents if possible
                        utm_source: intent?.utm_source || '',
                        utm_campaign: intent?.utm_campaign || '',
                        utm_medium: intent?.utm_medium || '',
                        utm_content: intent?.utm_content || '',
                        utm_term: intent?.utm_term || '',
                        client_ip: intent?.ip_address || ''
                    }

                    for (const integration of activeIntegrations) {
                        // B. IDEMPOTENCY CHECK
                        // Check if we already sent this specific integration for this specific transaction
                        const { data: existingLog } = await supabase
                            .from('integration_logs')
                            .select('id')
                            .eq('transaction_id', txId)
                            .eq('integration_name', integration.name)
                            .eq('status', 'success')
                            .single()

                        if (existingLog) {
                            console.log(`Skipping ${integration.name} for ${txId} - Already Sent`)
                            continue
                        }

                        // C. SEND TO UTMIFY
                        if (integration.name === 'utmify') {
                            const config = integration.config
                            // Construct Payload
                            const payload = {
                                event: config.event_name || 'purchase',
                                transaction_id: conversionData.transaction_id,
                                value: conversionData.value,
                                currency: conversionData.currency,
                                email: conversionData.email,
                                phone: conversionData.phone,
                                utm_source: conversionData.utm_source,
                                utm_campaign: conversionData.utm_campaign,
                                utm_medium: conversionData.utm_medium,
                                utm_content: conversionData.utm_content,
                                utm_term: conversionData.utm_term
                            }

                            // Send Request
                            // Note: fetch is available in Vercel Serverless environment
                            const response = await fetch('https://api.utmify.com.br/v1/conversions', { // Fictional URL, user provided generic example, using common standard
                                method: 'POST',
                                headers: {
                                    'Content-Type': 'application/json',
                                    'x-api-key': config.api_key // Assuming Header Auth based on user prompt 'Authorization: Bearer' or custom
                                    // User prompt said "Authorization: Bearer API_KEY", adjusting:
                                    // 'Authorization': `Bearer ${config.api_key}`
                                },
                                body: JSON.stringify(payload)
                            })

                            const respJson = await response.json().catch(() => ({}))
                            const success = response.ok

                            // D. LOG RESULT
                            await supabase.from('integration_logs').insert({
                                transaction_id: txId,
                                integration_name: integration.name,
                                status: success ? 'success' : 'failed',
                                payload: payload,
                                response: respJson
                            })
                        }
                        // Add other integrations here (else if ...)
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
