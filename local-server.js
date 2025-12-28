
import http from 'http'
import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'
import { fileURLToPath } from 'url'

// --- ENV LOADER ---
const __dirname = path.dirname(fileURLToPath(import.meta.url))
const envPath = path.resolve(__dirname, '.env.local')

if (fs.existsSync(envPath)) {
    const content = fs.readFileSync(envPath, 'utf-8')
    content.split(/\r?\n/).forEach(line => {
        const trimmed = line.trim()
        if (trimmed && !trimmed.startsWith('#')) {
            const [key, ...vals] = trimmed.split('=')
            if (key && vals.length > 0) {
                let val = vals.join('=')
                if ((val.startsWith('"') && val.endsWith('"')) || (val.startsWith("'") && val.endsWith("'"))) {
                    val = val.slice(1, -1)
                }
                process.env[key.trim()] = val.trim()
            }
        }
    })
}

const PORT = 3001
const supabaseUrl = process.env.VITE_SUPABASE_URL
const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY

if (!supabaseServiceKey) {
    console.error("⚠️  WARNING: SUPABASE_SERVICE_ROLE_KEY is missing in .env.local!")
    console.error("   Server-side tracking will fail without it.")
}

const supabase = createClient(supabaseUrl, supabaseServiceKey || 'placeholder')

// --- TRACKING LOGIC (Mirrors api/track-event.js) ---
async function handleTrackEvent(req, res) {
    let body = ''
    req.on('data', chunk => { body += chunk })
    req.on('end', async () => {
        try {
            const data = JSON.parse(body)
            const { event, userId, transactionId, payload } = data

            console.log(`[Local API] Received event: ${event}`)

            if (!supabaseServiceKey) {
                res.writeHead(500, { 'Content-Type': 'application/json' })
                res.end(JSON.stringify({ error: 'Missing Server Key' }))
                return
            }

            // 1. Fetch Integrations
            const { data: activeIntegrations } = await supabase
                .from('integrations')
                .select('*')
                .eq('enabled', true)

            const results = []

            for (const integration of activeIntegrations || []) {
                let enabledEvents = integration.enabled_events
                if (!enabledEvents) enabledEvents = ['purchase', 'pix_created', 'lead_created', 'pix_pending', 'subscription_active']

                if (!enabledEvents.includes(event)) {
                    results.push({ name: integration.name, status: 'skipped (disabled)' })
                    continue
                }

                const uniqueKey = transactionId || `lead_${userId}`

                // Idempotency
                const { data: existing } = await supabase.from('integration_logs')
                    .select('id').eq('transaction_id', uniqueKey).eq('integration_name', integration.name).eq('event_name', event).eq('status', 'success').single()

                if (existing) {
                    results.push({ name: integration.name, status: 'skipped (idempotent)' })
                    continue
                }

                // Send to UTMify
                if (integration.name === 'utmify') {
                    const trackPayload = {
                        event: event,
                        transaction_id: transactionId,
                        user_id: userId,
                        value: payload?.value || 0,
                        currency: 'BRL',
                        email: payload?.email,
                        ...payload // Merge UTMs
                    }

                    console.log(`[Local API] Sending to UTMify:`, trackPayload)

                    const response = await fetch('https://api.utmify.com.br/v1/conversions', {
                        method: 'POST',
                        headers: { 'Content-Type': 'application/json', 'x-api-key': integration.config.api_key },
                        body: JSON.stringify(trackPayload)
                    })

                    const success = response.ok
                    const respJson = await response.json().catch(() => ({}))

                    await supabase.from('integration_logs').insert({
                        transaction_id: uniqueKey, integration_name: integration.name, event_name: event, status: success ? 'success' : 'failed', payload: trackPayload, response: respJson
                    })

                    results.push({ name: integration.name, status: success ? 'sent' : 'failed' })
                }
            }

            res.writeHead(200, { 'Content-Type': 'application/json' })
            res.end(JSON.stringify({ success: true, results }))

        } catch (err) {
            console.error(err)
            res.writeHead(500, { 'Content-Type': 'application/json' })
            res.end(JSON.stringify({ error: err.message }))
        }
    })
}

// --- SERVER ---
const server = http.createServer((req, res) => {
    // CORS
    res.setHeader('Access-Control-Allow-Origin', '*')
    res.setHeader('Access-Control-Allow-Methods', 'POST, OPTIONS')
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type')

    if (req.method === 'OPTIONS') { res.writeHead(200); res.end(); return }

    if (req.url === '/api/track-event' && req.method === 'POST') {
        handleTrackEvent(req, res)
    } else {
        res.writeHead(404)
        res.end('Not Found')
    }
})

server.listen(PORT, () => {
    console.log(`[Local API] Server running at http://localhost:${PORT}`)
    console.log(`[Local API] Ready to handle /api/track-event requests via Vite Proxy`)
})
