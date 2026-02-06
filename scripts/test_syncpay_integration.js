
import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'
import handler from '../api/webhook.js' // We import the handler directly to test logic

// Load Env
const envPath = path.resolve('.env.local')
const envConfig = fs.readFileSync(envPath, 'utf-8')
const env = {}
envConfig.split('\n').forEach(line => {
    const [key, ...vals] = line.split('=')
    if (key && vals.length) env[key.trim()] = vals.join('=').trim()
})

// Set Env for the handler
process.env.VITE_SUPABASE_URL = env.VITE_SUPABASE_URL
process.env.SUPABASE_SERVICE_ROLE_KEY = env.SUPABASE_SERVICE_ROLE_KEY

const supabase = createClient(env.VITE_SUPABASE_URL, env.SUPABASE_SERVICE_ROLE_KEY)

async function testSyncPayFlow() {
    console.log("🚀 STARTING SYNCPAY INTEGRATION TEST")

    const testEmail = `test_sync_${Date.now()}@dramy.com`
    const txId = `tx_mock_${Date.now()}`

    // 1. Create User
    console.log(`Step 1: Creating User ${testEmail}...`)
    const { data: userRaw, error: uErr } = await supabase.auth.admin.createUser({
        email: testEmail,
        password: 'password123',
        email_confirm: true
    })
    if (uErr) { console.error("Create User Failed:", uErr); process.exit(1); }
    const userId = userRaw.user.id

    // 2. Create Payment Intent (Simulate create-pix.js)
    console.log(`Step 2: Creating Payment Intent linked to ${txId}...`)
    const { data: intent, error: iErr } = await supabase.from('payment_intents').insert({
        amount: 1990, // 19.90
        status: 'pending',
        email: testEmail,
        plan_slug: 'monthly',
        // gateway: 'syncpay', // Column missing in DB, commented for test
        transaction_id: txId
    }).select().single()

    if (iErr) { console.error("Insert Intent Failed:", iErr); process.exit(1); }

    // 3. Mock Webhook Request (Simulate SyncPay calling us)
    console.log(`Step 3: Simulating SyncPay Webhook Call...`)

    const req = {
        method: 'POST',
        headers: {},
        body: {
            // Check SyncPay payload format
            data: {
                id: txId,
                status: 'paid', // Or 'completed'
                amount: 19.90
            }
        }
    }

    const res = {
        status: (code) => {
            console.log(`   [Response Status] ${code}`)
            return {
                json: (data) => console.log(`   [Response Body]`, data)
            }
        },
        setHeader: () => { }
    }

    // CALL THE HANDLER
    await handler(req, res)

    // 4. Verify Database State
    console.log(`Step 4: Verifying Database...`)

    // Check Subscription
    const { data: sub } = await supabase.from('subscriptions')
        .select('*')
        .eq('user_id', userId)
        .eq('status', 'active')
        .single()

    if (sub) {
        console.log("   ✅ Subscription FOUND and ACTIVE!")
        console.log("   📅 Expires at:", sub.expires_at)
    } else {
        console.error("   ❌ Subscription NOT FOUND or NOT ACTIVE")
    }

    // Check Profile
    const { data: profile } = await supabase.from('profiles')
        .select('*')
        .eq('id', userId)
        .single()

    if (profile.subscription_active) {
        console.log("   ✅ Profile Updated (subscription_active = true)")
    } else {
        console.error("   ❌ Profile NOT Updated")
    }

    // Cleanup
    await supabase.auth.admin.deleteUser(userId)
    console.log("🧹 Cleanup done")
}

testSyncPayFlow()
