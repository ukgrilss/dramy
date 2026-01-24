
import { createClient } from '@supabase/supabase-js'

const SUPABASE_URL = 'https://qlylsucoanjohwrkkroq.supabase.co'
const SERVICE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFseWxzdWNvYW5qb2h3cmtrcm9xIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2NjAxMDUyOSwiZXhwIjoyMDgxNTg2NTI5fQ.QeKt7tjVSHbh6jR9Z59n2sTbkHYk3EMPRpdiOrIMATo'

const supabase = createClient(SUPABASE_URL, SERVICE_KEY)

async function inspect() {
    console.log('--- Inspecting Barbara ---')
    const email = 'barbara.fernandaribeiro@gmail.com'

    // 1. Get User
    const { data: { users } } = await supabase.auth.admin.listUsers()
    const barbara = users.find(u => u.email === email)

    if (!barbara) {
        console.log('User NOT found!')
        return
    }
    console.log(`User ID: ${barbara.id}`)

    // 2. Check Subscription
    const { data: subs, error } = await supabase
        .from('subscriptions')
        .select('*')
        .eq('user_id', barbara.id)

    console.log('Subscriptions:', subs)

    // 3. Check specific "mesal" plan stats in dashboard logic
    // Dashboard filters by status='active'
    const activeSub = subs?.find(s => s.status === 'active')
    console.log('Active Subscription:', activeSub ? 'YES' : 'NO')
    if (activeSub) {
        console.log('Plan:', activeSub.plan)
        console.log('Created At:', activeSub.created_at)
    }

    // 4. Check stats count
    const { count } = await supabase
        .from('subscriptions')
        .select('*', { count: 'exact', head: true })
        .eq('status', 'active')
    console.log(`Total Active Subs in DB: ${count}`)
}

inspect()
