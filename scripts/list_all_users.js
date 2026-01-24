
import { createClient } from '@supabase/supabase-js'

const SUPABASE_URL = 'https://qlylsucoanjohwrkkroq.supabase.co'
const SERVICE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFseWxzdWNvYW5qb2h3cmtrcm9xIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2NjAxMDUyOSwiZXhwIjoyMDgxNTg2NTI5fQ.QeKt7tjVSHbh6jR9Z59n2sTbkHYk3EMPRpdiOrIMATo'

const supabase = createClient(SUPABASE_URL, SERVICE_KEY)

async function listAll() {
    console.log('--- Listing ALL Users ---')

    let allUsers = []
    let page = 1
    let perPage = 50

    while (true) {
        const { data: { users }, error } = await supabase.auth.admin.listUsers({
            page: page,
            perPage: perPage
        })

        if (error) {
            console.error('Error:', error)
            break
        }

        if (!users || users.length === 0) break

        allUsers = allUsers.concat(users)
        console.log(`Page ${page}: fetched ${users.length} users.`)

        if (users.length < perPage) break // Last page
        page++
    }

    console.log(`Total Users: ${allUsers.length}`)

    const barbara = allUsers.find(u => u.email === 'barbara.fernandaribeiro@gmail.com')
    if (barbara) {
        console.log(`✅ FOUND Barbara: ${barbara.id}`)

        // Check sub
        const { data: subs } = await supabase
            .from('subscriptions')
            .select('*')
            .eq('user_id', barbara.id)
        console.log('Subscriptions:', subs)
    } else {
        console.log('❌ Barbara NOT found in entire database.')
        // List similar emails
        console.log('Similar emails:', allUsers.filter(u => u.email.includes('barbara')).map(u => u.email))
    }
}

listAll()
