
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

async function verifyAdmin() {
    console.log("🕵️ Verifying Admin Access...")

    // 1. Try to login (simulate login to get token) - WE CAN'T DO THIS EASILY WITHOUT PASSWORD
    // Instead, let's just check the profiles table for the admin email

    const email = "admin@cinefy.com"
    console.log(`Checking profile for: ${email}`)

    const { data: profile, error } = await supabase
        .from('profiles')
        .select('*')
        .eq('email', email)
        .single()

    if (error) {
        console.error("❌ Error fetching profile:", error)
        console.log("⚠️ This might be because of RLS! If RLS is working, Anon Key can't see profiles.")
    } else {
        console.log("✅ Profile found (via Anon Key - RLS might be too open if this works without login):", profile)
    }

    // 2. Check if we can list all profiles (RLS check)
    const { count, error: listError } = await supabase
        .from('profiles')
        .select('*', { count: 'exact', head: true })

    if (listError) {
        console.error("❌ Error listing profiles:", listError)
    } else {
        console.log(`📊 Publicly visible profiles: ${count}`)
    }
}

verifyAdmin()
