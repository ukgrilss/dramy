
import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'

// Load Env
const envPath = path.resolve('.env.local')
const envConfig = fs.readFileSync(envPath, 'utf-8')
const env = {}
envConfig.split('\n').forEach(line => {
    const [key, ...vals] = line.split('=')
    if (key && vals.length) env[key.trim()] = vals.join('=').trim()
})

const supabase = createClient(env.VITE_SUPABASE_URL, env.SUPABASE_SERVICE_ROLE_KEY)

async function testRenewals() {
    console.log("🛠️  TESTING DASHBOARD RENEWAL LOGIC")

    const testEmail = 'test_renew_' + Date.now() + '@dramy.com'

    // 1. Create User
    const { data: userRaw, error: uErr } = await supabase.auth.admin.createUser({
        email: testEmail,
        password: 'password123',
        email_confirm: true
    })
    if (uErr) { console.error(uErr); process.exit(1); }
    const userId = userRaw.user.id
    console.log("✅ User created:", userId)

    // 2. Insert FIRST Subscription (Old date)
    // Pretend this was last month
    const lastMonth = new Date()
    lastMonth.setDate(lastMonth.getDate() - 40) // 40 days ago

    await supabase.from('subscriptions').insert({
        user_id: userId,
        plan: 'monthly',
        status: 'expired',
        created_at: lastMonth.toISOString(),
        expires_at: new Date(Date.now() - 100000).toISOString()
    })
    console.log("✅ Inserted Old Subscription (40 days ago)")

    // 3. Insert SECOND Subscription (Now - RENEWAL)
    await supabase.from('subscriptions').insert({
        user_id: userId,
        plan: 'monthly',
        status: 'active',
        created_at: new Date().toISOString(),
        expires_at: new Date(Date.now() + 864000000).toISOString()
    })
    console.log("✅ Inserted New Subscription (Now)")

    // 4. Call Dashboard Stats RPC
    const sevenDaysAgo = new Date()
    sevenDaysAgo.setDate(sevenDaysAgo.getDate() - 7)

    const { data: stats, error: rpcErr } = await supabase.rpc('get_dashboard_stats', {
        p_start_date: sevenDaysAgo.toISOString()
    })

    if (rpcErr) { console.error("RPC Error:", rpcErr); process.exit(1); }

    console.log("📊 RPC Result:", stats)

    // 5. Assertions
    // We expect at least 1 Renewal (ours)
    // We expect our New Sub count for this user in this period to be 0 (since their FIRST sub was 40 days ago)
    // Wait, the RPC filters by created_at >= start_date.
    // Our user's sub #1 is old (not in range). Sub #2 is new (in range).
    // Sub #2 rn is 2. So it counts as renewal.

    if (stats.renewals > 0) {
        console.log("✅ SUCCESS: Renewals detected correctly.")
    } else {
        console.error("❌ FAILURE: Renewal NOT detected.")
    }

    // Cleanup
    await supabase.auth.admin.deleteUser(userId)
    console.log("🧹 Cleanup done")
}

testRenewals()
