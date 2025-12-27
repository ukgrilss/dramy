
import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'

// Manual .env parser
function parseEnv(filePath) {
    const content = fs.readFileSync(filePath, 'utf8')
    const config = {}
    content.split('\n').forEach(line => {
        const match = line.match(/^([^=]+)=(.*)$/)
        if (match) {
            config[match[1].trim()] = match[2].trim().replace(/^['"]|['"]$/g, '')
        }
    })
    return config
}

const envConfig = parseEnv('.env.local')
const supabaseUrl = envConfig.VITE_SUPABASE_URL
const supabaseKey = envConfig.VITE_SUPABASE_ANON_KEY // Use Anon Key for public readout if policy allows

if (!supabaseUrl || !supabaseKey) {
    console.error('Missing credentials in .env.local')
    process.exit(1)
}

const supabase = createClient(supabaseUrl, supabaseKey)

async function checkLogs() {
    console.log('--- CHECKING WEBHOOK LOGS ---')
    // We try to read. If 'Allow Admin Read' policy uses (true), this should work with ANON key.
    // If not, we might need SERVICE_ROLE, but that's not in .env.local probably.

    // Check if SERVICE_ROLE is in .env.local (it shouldn't be, but maybe user put it?)
    // If not, we rely on RLS being open.

    const { data, error } = await supabase
        .from('webhook_logs')
        .select('*')
        .order('created_at', { ascending: false })
        .limit(10)

    if (error) {
        console.error('Error fetching logs. RLS might be blocking read:', error.message)
        console.log('Try running CHECK_DEBUG_LOGS.sql in Supabase Dashboard instead.')
    } else {
        if (data.length === 0) {
            console.log('NO LOGS FOUND. The webhook never reached the server.')
        } else {
            console.log(`FOUND ${data.length} LOGS:`)
            data.forEach(log => {
                console.log(`\n[${log.created_at}] Status: ${log.status}`)
                console.log('Payload:', JSON.stringify(log.payload, null, 2))
                if (log.error_message) console.log('ERROR MSG:', log.error_message)
            })
        }
    }
}

checkLogs()
