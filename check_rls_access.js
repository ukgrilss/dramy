
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

async function checkAccess() {
    console.log("🕵️ Checking RLS Access for 'series' table...")

    // Try to select 1 item
    const { data, error, count } = await supabase
        .from('series')
        .select('*', { count: 'exact', head: false })
        .limit(1)

    if (error) {
        console.error("❌ ERROR ACCESSING SERIES:", error)
        console.error("This confirms RLS is blocking access or table doesn't exist.")
    } else {
        console.log("✅ Success! Access is working.")
        console.log(`📊 Found ${count} items in 'series' table via Anon Key.`)
        if (data.length > 0) {
            console.log("📝 Sample item:", data[0].title)
        } else {
            console.log("⚠️ Access worked but returned 0 items. Table might be empty or policies hide all rows.")
        }
    }
}

checkAccess()
