
import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'

// MANUAL ENV PARSER (No Deps)
function loadEnv() {
    try {
        // Look for .env.local in current dir
        const envPath = path.resolve('.env.local')
        console.log("Loading env from:", envPath)

        if (fs.existsSync(envPath)) {
            const content = fs.readFileSync(envPath, 'utf-8')
            const lines = content.split(/\r?\n/)
            for (const line of lines) {
                const trimmed = line.trim()
                if (!trimmed || trimmed.startsWith('#')) continue

                const eqIdx = trimmed.indexOf('=')
                if (eqIdx > 0) {
                    const key = trimmed.substring(0, eqIdx).trim()
                    let val = trimmed.substring(eqIdx + 1).trim()
                    // Remove quotes if present
                    if ((val.startsWith('"') && val.endsWith('"')) || (val.startsWith("'") && val.endsWith("'"))) {
                        val = val.slice(1, -1)
                    }
                    process.env[key] = val
                }
            }
        } else {
            console.error("File not found:", envPath)
        }
    } catch (e) {
        console.error("Env load error:", e)
    }
}

loadEnv()

const url = process.env.VITE_SUPABASE_URL
const key = process.env.SUPABASE_SERVICE_ROLE_KEY

if (!url || !key) {
    console.error("Error: VITE_SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY not set.")
    console.log("Keys found:", Object.keys(process.env).filter(k => k.includes('SUPABASE')))
    process.exit(1)
}

const supabase = createClient(url, key)

async function main() {
    console.log("--- DEBUGGING UTMIFY INTEGRATION (NODE) ---")

    // 1. Integrations
    const { data: integrations, error } = await supabase.from('integrations').select('*')
    if (error) console.error("Error fetching integrations:", error)

    console.log(`\n[Integrations] Found ${integrations?.length || 0} records:`)
    integrations?.forEach(i => {
        console.log(`ID: ${i.id}`)
        console.log(`Name: ${i.name}`)
        console.log(`Enabled: ${i.enabled}`)
        console.log(`Enabled Events:`, JSON.stringify(i.enabled_events))
        console.log(`Config:`, i.config ? JSON.stringify(i.config).substring(0, 50) + '...' : 'null')
        console.log("----------------")
    })

    // 2. Logs
    const { data: logs, error: logError } = await supabase
        .from('integration_logs')
        .select('*')
        .order('created_at', { ascending: false })
        .limit(10)

    if (logError) console.error("Error fetching logs:", logError)

    console.log(`\n[Logs] Last 10 records:`)
    logs?.forEach(l => {
        console.log(`Time: ${l.created_at}`)
        console.log(`Event: ${l.event_name}`)
        console.log(`Integration: ${l.integration_name}`)
        console.log(`Status: ${l.status}`)
        console.log(`TxID: ${l.transaction_id}`)
        console.log(`Resp:`, JSON.stringify(l.response || {}).substring(0, 50))
        console.log("----------------")
    })
}

main()
