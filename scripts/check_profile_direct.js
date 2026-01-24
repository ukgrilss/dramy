
import { createClient } from '@supabase/supabase-js'

const SUPABASE_URL = 'https://qlylsucoanjohwrkkroq.supabase.co'
const SERVICE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFseWxzdWNvYW5qb2h3cmtrcm9xIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2NjAxMDUyOSwiZXhwIjoyMDgxNTg2NTI5fQ.QeKt7tjVSHbh6jR9Z59n2sTbkHYk3EMPRpdiOrIMATo'

const supabase = createClient(SUPABASE_URL, SERVICE_KEY)

async function checkProfile() {
    console.log('--- Checking Barbara Profile ---')

    // Check by email in profiles
    const { data: profile, error } = await supabase
        .from('profiles')
        .select('*')
        .eq('email', 'barbara.fernandaribeiro@gmail.com')
        .single()

    if (error) console.log('Error/Not Found:', error.message)
    else console.log('Found Profile:', profile)

    // Also list all profiles to see what's left
    const { count } = await supabase
        .from('profiles')
        .select('*', { count: 'exact', head: true })
    console.log(`Total Profiles: ${count}`)
}

checkProfile()
