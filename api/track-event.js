
import { createClient } from '@supabase/supabase-js'

export default async function handler(req, res) {
    // 1. Method Check
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

        // 3. Process Each Integration
        const results = []

        for (const integration of activeIntegrations) {
            // Check if this specific event is enabled for this integration
            const enabledEvents = integration.enabled_events || []
            // Legacy support: if enabled_events is null, assume 'purchase' only or migrate logic. 
            // Here we skip if event is not in list.
            if (!enabledEvents.includes(event)) {
                results.push({ name: integration.name, status: 'skipped_disabled_event' })
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
                    const trackPayload = {
                        event: event, // 'lead_created', 'pix_created', etc.
                        transaction_id: transactionId,
                        user_id: userId,
                        value: payload?.value || 0,
                        currency: 'BRL',
                        email: payload?.email,
                        phone: payload?.phone,
                        utm_source: payload?.utm_source,
                        utm_campaign: payload?.utm_campaign,
                        utm_medium: payload?.utm_medium,
                        utm_content: payload?.utm_content,
                        utm_term: payload?.utm_term
                    }

                    const response = await fetch('https://api.utmify.com.br/v1/conversions', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'x-api-key': config.api_key
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
