
import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'

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

const supabaseUrl = process.env.VITE_SUPABASE_URL
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY

const supabase = createClient(supabaseUrl, supabaseKey)

async function checkTable() {
    console.log("🕵️ Checking if 'subscriptions' table exists...")

    const { data, error } = await supabase
        .from('subscriptions')
        .select('*')
        .limit(1)

    if (error) {
        console.error("❌ Error accessing 'subscriptions':", error.message)
        console.log("ℹ️  This likely means the table DOES NOT exist.")

        console.log("\n🕵️ Checking 'profiles' for subscription columns...")
        const { data: profiles, error: profError } = await supabase
            .from('profiles')
            .select('plan_atual, subscription_active, plan_status')
            .limit(1)

        if (profError) console.error("Error accessing profiles:", profError)
        else console.log("✅ 'profiles' table has subscription columns:", profiles)

    } else {
        console.log("✅ 'subscriptions' table exists!")
    }
}

checkTable()
