
import { SyncPayService } from '../api/services/syncpay.js'
import fs from 'fs'
import path from 'path'
import { fileURLToPath } from 'url'

const __dirname = path.dirname(fileURLToPath(import.meta.url))
const logFile = path.resolve(__dirname, 'debug_results.log')

// Load .env.local
const envPath = path.resolve(__dirname, '../.env.local')
if (fs.existsSync(envPath)) {
    const content = fs.readFileSync(envPath, 'utf-8')
    content.split(/\r?\n/).forEach(line => {
        const trimmed = line.trim()
        if (trimmed && !trimmed.startsWith('#')) {
            const [key, ...vals] = trimmed.split('=')
            if (key && vals.length > 0) process.env[key.trim()] = vals.join('=').trim()
        }
    })
}

function log(msg) {
    console.log(msg)
    try { fs.appendFileSync(logFile, msg + '\n') } catch (e) { }
}

async function runDebug() {
    try { fs.unlinkSync(logFile) } catch (e) { }
    log('--- STARTING SYNCPAY LIMIT DEBUG ---')

    // Test D: Amount 100
    try {
        log('\n[Test D] Amount 100')
        const res = await SyncPayService.createPix({
            amount: 100,
            description: 'Debug 100',
            payer: { name: 'Test User', email: 'test@debug.com', cpf: '' },
            webhookUrl: 'https://google.com'
        })
        log(`✅ Test D Success: ${res.transaction_id}`)
    } catch (e) {
        log(`❌ Test D Failed: ${e.message}`)
    }

    // Test E: Amount 500
    try {
        log('\n[Test E] Amount 500')
        const res = await SyncPayService.createPix({
            amount: 500,
            description: 'Debug 500',
            payer: { name: 'Test User', email: 'test@debug.com', cpf: '' },
            webhookUrl: 'https://google.com'
        })
        log(`✅ Test E Success: ${res.transaction_id}`)
    } catch (e) {
        log(`❌ Test E Failed: ${e.message}`)
    }

    // Test G: String "999.00" (Bypass parseFloat inside service if possible? No, service parses float)
    // We cannot test string easily without modifying service.
    // BUT we can test "Almost 999" -> 998?
    try {
        log('\n[Test F] Amount 998')
        const res = await SyncPayService.createPix({
            amount: 998,
            description: 'Debug 998',
            payer: { name: 'Test User', email: 'test@debug.com', cpf: '' },
            webhookUrl: 'https://google.com'
        })
        log(`✅ Test F Success: ${res.transaction_id}`)
    } catch (e) {
        log(`❌ Test F Failed: ${e.message}`)
    }
}

runDebug()
