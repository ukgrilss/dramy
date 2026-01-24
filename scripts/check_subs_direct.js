
import { createClient } from '@supabase/supabase-js'

const SUPABASE_URL = 'https://qlylsucoanjohwrkkroq.supabase.co'
const SERVICE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFseWxzdWNvYW5qb2h3cmtrcm9xIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2NjAxMDUyOSwiZXhwIjoyMDgxNTg2NTI5fQ.QeKt7tjVSHbh6jR9Z59n2sTbkHYk3EMPRpdiOrIMATo'

const supabase = createClient(SUPABASE_URL, SERVICE_KEY)

async function checkSubs() {
    console.log('--- Checking Recent Subscriptions ---')

    // Fetch last 10 subscriptions
    const { data: subs, error } = await supabase
        .from('subscriptions')
        .select(`
            id,
            user_id,
            status,
            plan,
            created_at,
            updated_at
        `)
        .order('created_at', { ascending: false })
        .limit(10)

    if (error) console.error('Error:', error)
    else console.log(subs)

    // Check profiles for these users
    if (subs && subs.length > 0) {
        const userIds = subs.map(s => s.user_id)
        const { data: profiles } = await supabase
            .from('profiles')
            .select('id, email')
            .in('id', userIds)

        console.log('\n--- Associated Profiles ---')
        console.log(profiles)
    }
}

checkSubs()
