
import { createClient } from '@supabase/supabase-js'
import { sendUtmifyOrder, formatStatsDate } from './services/utmify.js'

export default async function handler(req, res) {
    // 1. GET Request: Browser Check
    if (req.method === 'GET') {
        return res.status(200).json({ status: 'online', service: 'track-event' })
    }

    if (req.method !== 'POST') {
        return res.status(405).json({ error: 'Method not allowed' })
    }

    try {
        const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.SUPABASE_SERVICE_ROLE_KEY)
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

        // 2a. Fetch User Profile
        let userProfile = {}
        if (userId) {
            const { data: profile } = await supabase
                .from('profiles')
                .select('name, phone, cpf, email, utm_source, utm_medium, utm_campaign, utm_content, utm_term') // Include UTMs
                .eq('id', userId)
                .single()
            if (profile) userProfile = profile
        }

        const results = []

        for (const integration of activeIntegrations) {
            let enabledEvents = integration.enabled_events || ['purchase', 'pix_created', 'lead_created', 'pix_pending', 'subscription_active']

            if (!enabledEvents.includes(event)) {
                results.push({ name: integration.name, status: `skipped_disabled_event_${event}` })
                continue
            }

            // IDEMPOTENCY CHECK
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

            // =================================================================================
            // UTMify (ENV-ONLY MODE) - Centralized Service Usage
            // =================================================================================
            if (integration.name === 'utmify' && process.env.UTMIFY_API_KEY) {

                // Prepare Strict Payload Data
                const now = new Date()
                const createdAt = formatStatsDate(now)

                // Map Status
                let utmifyStatus = 'waiting_payment'
                if (event === 'purchase' || event === 'subscription_active') {
                    utmifyStatus = 'paid'
                }

                // Prepare Customer
                const customer = {
                    name: payload?.name || userProfile.name, // Service converts undefined to default
                    email: payload?.email || userProfile.email,
                    phone: payload?.phone || userProfile.phone,
                    document: payload?.document || userProfile.cpf,
                    ip: payload?.client_ip
                }

                // Prepare UTMs
                const utm = {
                    utm_source: payload?.utm_source || userProfile.utm_source,
                    utm_campaign: payload?.utm_campaign || userProfile.utm_campaign,
                    utm_medium: payload?.utm_medium || userProfile.utm_medium,
                    utm_content: payload?.utm_content || userProfile.utm_content,
                    utm_term: payload?.utm_term || userProfile.utm_term
                }

                const valueInCents = Math.round((payload?.value || 0) * 100)

                // Call Service
                const result = await sendUtmifyOrder({
                    orderId: uniqueKey,
                    status: utmifyStatus,
                    valueInCents: valueInCents,
                    createdAt: createdAt,
                    approvedDate: utmifyStatus === 'paid' ? createdAt : null,
                    customer,
                    utm,
                    eventName: event
                })

                // Log Result
                await supabase.from('integration_logs').insert({
                    transaction_id: uniqueKey,
                    integration_name: 'utmify_env', // Explicitly logging as env mode
                    event_name: event,
                    status: result.success ? 'success' : 'failed',
                    payload: result.payload,
                    response: result.response || { error: result.error }
                })

                results.push({ name: 'utmify', status: result.success ? 'sent' : 'failed' })

            } // End UTMify Block
        }

        return res.status(200).json({ success: true, results })

    } catch (err) {
        console.error('Track API Error:', err)
        return res.status(500).json({ error: err.message })
    }
}
