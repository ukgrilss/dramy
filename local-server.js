
import http from 'http'
import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'
import { fileURLToPath } from 'url'
import { sendUtmifyOrder, formatStatsDate } from './api/services/utmify.js'

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

            const results = []

            // =================================================================================
            // 1. PROCESS INTEGRATIONS (UTMify w/ ENV Priority)
            // =================================================================================

            // A. UTMify ENV-ONLY MODE (Service)
            if (process.env.UTMIFY_API_KEY) {
                try {
                    console.log('[Local API] ⚡ UTMify Env Mode Active')

                    const now = new Date()
                    const createdAt = formatStatsDate(now)

                    let utmifyStatus = 'waiting_payment'
                    if (event === 'purchase' || event === 'subscription_active') utmifyStatus = 'paid'

                    const customer = {
                        name: payload?.name || 'Cliente Local',
                        email: payload?.email || 'localuser@test.com',
                        phone: payload?.phone || null,
                        document: payload?.document || null,
                        ip: payload?.client_ip || null
                    }

                    const utm = {
                        utm_source: payload?.utm_source,
                        utm_campaign: payload?.utm_campaign,
                        utm_medium: payload?.utm_medium,
                        utm_content: payload?.utm_content,
                        utm_term: payload?.utm_term
                    }

                    const valueInCents = Math.round((payload?.value || 0) * 100)

                    // SERVICE CALL
                    const result = await sendUtmifyOrder({
                        orderId: transactionId || `local_${userId}`,
                        status: utmifyStatus,
                        valueInCents: valueInCents,
                        createdAt: createdAt,
                        approvedDate: utmifyStatus === 'paid' ? createdAt : null,
                        customer,
                        utm,
                        eventName: event
                    })

                    // Idempotency check handled inside strict backend logic usually, but here checking manually for logs
                    const { data: existing } = await supabase.from('integration_logs')
                        .select('id')
                        .eq('transaction_id', transactionId || `local_${userId}`)
                        .eq('integration_name', 'utmify_env')
                        .eq('event_name', event)
                        .eq('status', 'success')
                        .single()

                    if (!existing) {
                        // Log Result
                        await supabase.from('integration_logs').insert({
                            transaction_id: transactionId || `local_${userId}`,
                            integration_name: 'utmify_env',
                            event_name: event,
                            status: result.success ? 'success' : 'failed',
                            payload: result.payload,
                            response: result.response || { error: result.error }
                        })
                        results.push({ name: 'utmify', status: result.success ? 'sent' : 'failed' })
                    } else {
                        results.push({ name: 'utmify', status: 'idempotent_skip' })
                    }
                } catch (err) {
                    console.error('[Local API] UTMify Error:', err)
                    results.push({ name: 'utmify', status: 'error', error: err.message })
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
    console.log(`[Local API] Ready to handle /api/track-event requests`)
})
