
import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'
import { fileURLToPath } from 'url'

// Load Env
const __dirname = path.dirname(fileURLToPath(import.meta.url))
const envPath = path.resolve(__dirname, '.env.local')

if (fs.existsSync(envPath)) {
    const content = fs.readFileSync(envPath, 'utf-8')
    content.split(/\r?\n/).forEach(line => {
        const trimmed = line.trim()
        if (trimmed && !trimmed.startsWith('#')) {
            const [key, val] = trimmed.split('=')
            if (key) process.env[key.trim()] = val ? val.trim().replace(/^['"]|['"]$/g, '') : ''
        }
    })
}

const supabaseUrl = process.env.VITE_SUPABASE_URL
const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY
const supabase = createClient(supabaseUrl, supabaseServiceKey)

async function debugLogs() {
    console.log('--- FETCHING LAST UTMIFY LOG ---')

    const { data, error } = await supabase
        .from('integration_logs')
        .select('*')
        .eq('integration_name', 'utmify_env')
        .order('created_at', { ascending: false })
        .limit(1)

    if (error) {
        console.error('Error fetching logs:', error)
        return
    }

    if (!data || data.length === 0) {
        console.log('No logs found for utmify_env.')
        console.log('Checking standard utmify logs...')
        const { data: data2 } = await supabase
            .from('integration_logs')
            .select('*')
            .eq('integration_name', 'utmify')
            .order('created_at', { ascending: false })
            .limit(1)

        if (data2 && data2.length > 0) {
            console.log('Found standard "utmify" log:')
            console.log(JSON.stringify(data2[0], null, 2))
        } else {
            console.log('No logs found at all.')
        }
        return
    }

    const log = data[0]
    console.log(`ID: ${log.id}`)
    console.log(`Date: ${log.created_at}`)
    console.log(`Status: ${log.status}`)
    console.log(`Transaction ID: ${log.transaction_id}`)
    console.log(`Event: ${log.event_name}`)

    console.log('\n--- PAYLOAD SENT ---')
    console.log(JSON.stringify(log.payload, null, 2))

    console.log('\n--- RESPONSE RECEIVED ---')
    console.log(JSON.stringify(log.response, null, 2))
}

debugLogs()
