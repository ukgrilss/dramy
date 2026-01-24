
import { createClient } from '@supabase/supabase-js'
import path from 'path'
import { fileURLToPath } from 'url'

// Environment setup
const SUPABASE_URL = 'https://qlylsucoanjohwrkkroq.supabase.co'
// Hardcoding key from .env.local view since I can't easily load .env types in this environment without module setup, 
// but actually I'll just use the one I saw.
const SERVICE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFseWxzdWNvYW5qb2h3cmtrcm9xIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2NjAxMDUyOSwiZXhwIjoyMDgxNTg2NTI5fQ.QeKt7tjVSHbh6jR9Z59n2sTbkHYk3EMPRpdiOrIMATo'

const supabase = createClient(SUPABASE_URL, SERVICE_KEY)

async function inspect() {
    console.log('--- Checking Usage ---')
    // Check specific user
    const { data: users, error: userError } = await supabase.auth.admin.listUsers()
    if (userError) console.error('Error fetching users:', userError)

    const targetEmail = 'barbara.fernandaribeiro@gmail.com'
    const targetUser = users?.users.find(u => u.email === targetEmail)

    console.log('Target User found:', targetUser ? targetUser.id : 'No')
    console.log('Total Users:', users?.users.length)

    // Check subscriptions
    const { data: subs, error: subError } = await supabase
        .from('subscriptions')
        .select('*')
        .order('created_at', { ascending: false })

    if (subError) console.error('Error fetching subs:', subError)

    console.log('\n--- Recent Subscriptions (Top 10) ---')
    subs?.slice(0, 10).forEach(sub => {
        console.log(`ID: ${sub.id} | User: ${sub.user_id} | Plan: ${sub.plan} | Status: ${sub.status} | Created: ${sub.created_at}`)
    })

    // Check for any subscription from yesterday (approx)
    const yesterday = new Date()
    yesterday.setDate(yesterday.getDate() - 2) // Look back 48h to be safe
    const recentSubs = subs?.filter(s => new Date(s.created_at) > yesterday)
    console.log(`\n--- Subscriptions in last 48h: ${recentSubs?.length} ---`)
    recentSubs?.forEach(s => console.log(JSON.stringify(s, null, 2)))

    // Check Profiles
    const { data: profiles, error: profError } = await supabase
        .from('profiles')
        .select('id, email, user_id')
        .limit(10)

    console.log('\n--- Profiles Sample ---')
    console.log(profiles)
}

inspect()
