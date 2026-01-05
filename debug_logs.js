
import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'

// Load env locally manually since we are running via node
const envPath = path.resolve(process.cwd(), '.env.local')
const envContent = fs.readFileSync(envPath, 'utf-8')
const env = {}
envContent.split('\n').forEach(line => {
    const [key, value] = line.split('=')
    if (key && value) env[key.trim()] = value.trim()
})

const supabaseUrl = env.VITE_SUPABASE_URL
const supabaseKey = env.SUPABASE_SERVICE_ROLE_KEY

if (!supabaseUrl || !supabaseKey) {
    console.error("Missing Supabase credentials in .env.local")
    process.exit(1)
}

const supabase = createClient(supabaseUrl, supabaseKey)

async function fetchLogs() {
    console.log("Fetching last 10 integration logs...")
    const { data, error } = await supabase
        .from('integration_logs')
        .select('*')
        .order('created_at', { ascending: false })
        .limit(20)

    if (error) {
        console.error("Error fetching logs:", error)
        return
    }

    if (data.length === 0) {
        console.log("No logs found.")
        return
    }

    console.log("\n=== LATEST LOGS ===")
    data.forEach(log => {
        console.log(`[${new Date(log.created_at).toISOString()}] ${log.event_name} (${log.status})`)
        console.log(JSON.stringify(log.payload, null, 2))
        console.log("---------------------------------------------------")
    })
}

fetchLogs()
