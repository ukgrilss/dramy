
import { createClient } from '@supabase/supabase-js'

const SUPABASE_URL = 'https://qlylsucoanjohwrkkroq.supabase.co'
const SERVICE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFseWxzdWNvYW5qb2h3cmtrcm9xIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2NjAxMDUyOSwiZXhwIjoyMDgxNTg2NTI5fQ.QeKt7tjVSHbh6jR9Z59n2sTbkHYk3EMPRpdiOrIMATo'

const supabase = createClient(SUPABASE_URL, SERVICE_KEY)

async function updateDate() {
    console.log('--- Backdating Barbara Subscription ---')
    const userId = '6c822386-acb0-4d84-bf26-07d2ef076307'

    // Yesterday
    const yesterday = new Date()
    yesterday.setDate(yesterday.getDate() - 1)

    const { data, error } = await supabase
        .from('subscriptions')
        .update({ created_at: yesterday.toISOString() })
        .eq('user_id', userId)
        .select()

    if (error) console.error('Error:', error)
    else console.log('✅ Updated:', data)
}

updateDate()
