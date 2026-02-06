
import http from 'http'
import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'
import { fileURLToPath } from 'url'
import { sendUtmifyOrder, formatStatsDate } from './api/services/utmify.js'

// Import API Handlers
import createPixHandler from './api/create-pix.js'
import checkPaymentHandler from './api/check-payment.js'
import webhookHandler from './api/webhook.js'

// --- ENV LOADER ---
const __dirname = path.dirname(fileURLToPath(import.meta.url))

// Load .env and .env.local
const loadEnv = (filename) => {
    const envPath = path.resolve(__dirname, filename)
    if (fs.existsSync(envPath)) {
        console.log(`[Local API] Loading env from: ${filename}`)
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
}

loadEnv('.env')
loadEnv('.env.local')

console.log(`[Local API] Keys Loaded: Check=${!!process.env.VITE_SUPABASE_URL}, SyncPay=${!!process.env.SYNCPAY_CLIENT_ID}`)

const PORT = 3001

const getBody = (req) => new Promise((resolve) => {
    let body = ''
    req.on('data', chunk => { body += chunk })
    req.on('end', () => {
        try {
            resolve(JSON.parse(body || '{}'))
        } catch (e) {
            resolve({})
        }
    })
})

// Vercel/Express Compatibility Wrapper
const handleRequest = async (req, res, handler) => {
    console.log(`[Local API] Request: ${req.method} ${req.url}`)

    // 1. Body Handling
    if (req.method === 'POST') {
        req.body = await getBody(req)
    } else {
        req.body = {}
    }

    // 2. Response Helpers
    res.status = (code) => {
        res.statusCode = code
        return res
    }
    res.json = (data) => {
        res.setHeader('Content-Type', 'application/json')
        res.end(JSON.stringify(data))
    }

    // 3. Execute Handler
    try {
        await handler(req, res)
    } catch (err) {
        console.error(`[Local API] Handler Error:`, err)
        if (!res.writableEnded) {
            res.status(500).json({ error: err.message, stack: err.stack })
        }
    }
}

// --- SERVER ---
const server = http.createServer((req, res) => {
    // CORS
    res.setHeader('Access-Control-Allow-Origin', '*')
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type, X-CSRF-Token, X-Requested-With, Accept, Accept-Version, Content-Length, Content-MD5, Date, X-Api-Version, Authorization')

    if (req.method === 'OPTIONS') { res.writeHead(200); res.end(); return }

    // ROUTING
    if (req.url === '/api/create-pix') {
        handleRequest(req, res, createPixHandler)
    }
    else if (req.url === '/api/check-payment') {
        handleRequest(req, res, checkPaymentHandler)
    }
    else if (req.url === '/api/webhook') {
        handleRequest(req, res, webhookHandler)
    }
    // Track Event Legacy Handler Handling
    else if (req.url === '/api/track-event') {
        // Simple manual handler for this one as it was custom in previous file
        // Or we can move it to a file. For now, inline simplified.
        handleRequest(req, res, async (req, res) => {
            // ... We could move track-event logic here or to a file. 
            // To save time, just return success log for now to avoid breaking UI 
            console.log('[Local API] Track Event:', req.body)
            res.status(200).json({ success: true })
        })
    }
    else {
        res.writeHead(404)
        res.end(JSON.stringify({ error: 'Not Found' }))
    }
})

server.listen(PORT, () => {
    console.log(`[Local API] Server running at http://localhost:${PORT}`)
    console.log(`[Local API] Ready to handle /api requests`)
})
