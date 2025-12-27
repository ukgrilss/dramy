
import { createClient } from '@supabase/supabase-js'
import fs from 'fs'

// Load .env.local manually
try {
    const envConfig = fs.readFileSync('.env.local', 'utf-8')
    const lines = envConfig.split('\n')
    lines.forEach(line => {
        const parts = line.split('=')
        if (parts.length >= 2) {
            process.env[parts[0].trim()] = parts.slice(1).join('=').trim()
        }
    })
} catch (e) {
    console.error("Could not read .env.local")
}

const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.VITE_SUPABASE_ANON_KEY)

async function checkProfiles() {
    console.log("🕵️ Checking profiles for active subscriptions...")

    const { data, error, count } = await supabase
        .from('profiles')
        .select('*', { count: 'exact' })
        .eq('subscription_active', true)

    if (error) {
        console.error("Error:", error)
    } else {
        console.log(`✅ Found ${count} active profiles with 'subscription_active' = true`)
        if (data.length > 0) {
            console.log("Sample:", data[0])
            // Generate SQL to populate subscriptions?
        } else {
            console.log("⚠️ No active subscriptions in profiles either.")
        }
    }
}

checkProfiles()
