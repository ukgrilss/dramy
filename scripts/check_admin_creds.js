
import { createClient } from '@supabase/supabase-js'

const SUPABASE_URL = 'https://qlylsucoanjohwrkkroq.supabase.co'
const ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFseWxzdWNvYW5qb2h3cmtrcm9xIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYwMTA1MjksImV4cCI6MjA4MTU4NjUyOX0.G1w2lqG7lA-Y4L5M3lDq8C2qL2g9X2p0Pq9lX9lX9lX' 
// Note: I need the ANON KEY, let me grep it from .env.local or just use the one I saw in other files if available. 
// Wait, I saw SERVICE_KEY only in previous steps. 
// Let me try to find ANON_KEY from main.jsx or similar? No, it uses import. 
// verify_admin_status.js loads it from .env.local.
// The user has .env.local. I can look at it.

// Let's read .env.local first to be safe, or just use the one from previous context if valid.
// Actually, I'll use the script to read .env.local dynamically so I don't hardcode wrong keys.

import fs from 'fs'
import path from 'path'

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
    console.log("No .env.local found")
}

const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.VITE_SUPABASE_ANON_KEY)

async function checkLogin() {
    console.log('Testing login for admin@cinefy.com...')
    
    const { data, error } = await supabase.auth.signInWithPassword({
        email: 'admin@cinefy.com',
        password: 'Admin@123',
    })

    if (error) {
        console.log('❌ Login Failed:', error.message)
    } else {
        console.log('✅ Login Success! User ID:', data.user.id)
    }
}

checkLogin()
