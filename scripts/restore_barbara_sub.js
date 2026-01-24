
import { createClient } from '@supabase/supabase-js'

const SUPABASE_URL = 'https://qlylsucoanjohwrkkroq.supabase.co'
const SERVICE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFseWxzdWNvYW5qb2h3cmtrcm9xIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2NjAxMDUyOSwiZXhwIjoyMDgxNTg2NTI5fQ.QeKt7tjVSHbh6jR9Z59n2sTbkHYk3EMPRpdiOrIMATo'

const supabase = createClient(SUPABASE_URL, SERVICE_KEY)

async function restoreSub() {
    console.log('--- Restoring Barbara Subscription ---')
    const userId = '6c822386-acb0-4d84-bf26-07d2ef076307' // From previous step

    // Check if exists first
    const { data: existing } = await supabase.from('subscriptions').select('*').eq('user_id', userId)
    if (existing && existing.length > 0) {
        console.log('Subscription already exists:', existing)
        return
    }

    // Insert
    const { data, error } = await supabase
        .from('subscriptions')
        .insert({
            user_id: userId,
            plan: 'monthly',
            status: 'active',
            created_at: new Date().toISOString(), // Current time effectively
            updated_at: new Date().toISOString()
        })
        .select()

    if (error) console.error('Error creating sub:', error)
    else console.log('✅ Created subscription:', data)
}

restoreSub()
