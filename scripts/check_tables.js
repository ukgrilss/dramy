
import { createClient } from '@supabase/supabase-js'

const SUPABASE_URL = 'https://qlylsucoanjohwrkkroq.supabase.co'
const SERVICE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFseWxzdWNvYW5qb2h3cmtrcm9xIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2NjAxMDUyOSwiZXhwIjoyMDgxNTg2NTI5fQ.QeKt7tjVSHbh6jR9Z59n2sTbkHYk3EMPRpdiOrIMATo'

const supabase = createClient(SUPABASE_URL, SERVICE_KEY)

async function listTables() {
    console.log('--- Listing Tables ---')

    // There isn't a direct "list tables" in JS client easily without SQL
    // But we can try to inspect definitions if we had access, or just guess common ones.
    // Instead, I'll use a SQL query via RPC if available, or just try to select from likely tables.

    const likelyTables = [
        'subscriptions', 'profiles', 'plans', 'categories', 'filmes', 'series', 'episodes',
        'trial_access', 'watch_history', 'history', 'my_list', 'watchlist', 'favorites',
        'transactions', 'payments', 'invoices', 'orders',
        'notifications', 'logs', 'audit_logs'
    ]

    for (const table of likelyTables) {
        const { data, error } = await supabase.from(table).select('count', { count: 'exact', head: true })
        if (!error) {
            console.log(`✅ Table exists: ${table}`)
        } else {
            // console.log(`❌ ${table}: ${error.message}`)
        }
    }
}

listTables()
