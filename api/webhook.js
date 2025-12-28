
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
                // A. UTMify ENV-ONLY MODE (Priority)
                if (process.env.UTMIFY_API_KEY) {
                    const endpoint = process.env.UTMIFY_ENDPOINT || 'https://api.utmify.com.br/api/orders'
                    const eventsToSend = ['purchase', 'subscription_active'] // Webhook is always considered a purchase/conversion

                    for (const eventName of eventsToSend) {
                        try {
                            // IDEMPOTENCY CHECK (Env Mode)
                            const { data: existingLog } = await supabase
                                .from('integration_logs')
                                .select('id')
                                .eq('transaction_id', txId)
                                .eq('integration_name', 'utmify_env')
                                .eq('event_name', eventName)
                                .eq('status', 'success')
                                .single()

                            if (existingLog) {
                                console.log(`Skipping UTMify(Env):${eventName} for ${txId} - Already Sent`)
                                continue
                            }

                            const valueInCents = Math.round((conversionData.value || 0) * 100)

                            // 📦 STRICT EXTREME PAYLOAD (Senior Dev Spec)
                            // Webhook always means "Paid"
                            const payload = {
                                event: 'purchase',
                                platform: 'Custom',
                                orderId: conversionData.transaction_id,
                                paymentMethod: 'pix',
                                status: 'paid',
                                totalPriceInCents: valueInCents,
                                customer: {
                                    email: conversionData.email,
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
                                    'Authorization': `Bearer ${process.env.UTMIFY_API_KEY}` // ⚠️ STRICT ENV AUTH
                                },
                                body: JSON.stringify(payload)
                            })

                            const respJson = await response.json().catch(() => ({}))
                            const success = response.ok

                            // LOG RESULT
                            await supabase.from('integration_logs').insert({
                                transaction_id: txId,
                                integration_name: 'utmify_env',
                                event_name: eventName,
                                status: success ? 'success' : 'failed',
                                payload: payload,
                                response: respJson
                            })

                        } catch (err) {
                            console.error('UTMify Env Logic Error:', err)
                        }
                    }
                }

                // B. OTHER DB INTEGRATIONS
                const { data: activeIntegrations } = await supabase
                    .from('integrations')
                    .select('*')
                    .eq('enabled', true)

                if (activeIntegrations && activeIntegrations.length > 0) {
                    // ... (Logic for other integrations)
                    for (const integration of activeIntegrations) {
                        if (process.env.UTMIFY_API_KEY && integration.name === 'utmify') continue // Skip if handled by ENV
                        // ... Implementation for others if needed ...
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
