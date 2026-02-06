
import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'
import { activateSubscription } from '../api/services/subscription.js'

// 1. Load Env
const envPath = path.resolve('.env.local')
const envConfig = fs.readFileSync(envPath, 'utf-8')
const env = {}
envConfig.split('\n').forEach(line => {
    const [key, ...vals] = line.split('=')
    if (key && vals.length) env[key.trim()] = vals.join('=').trim()
})

const supabase = createClient(env.VITE_SUPABASE_URL, env.SUPABASE_SERVICE_ROLE_KEY)

async function testFlow() {
    console.log("🛠️  STARTING SUBSCRIPTION FLOW TEST")

    // 2. Setup Test User
    const testEmail = 'test_automator_' + Date.now() + '@dramy.com'
    const { data: user, error: createError } = await supabase.auth.admin.createUser({
        email: testEmail,
        password: 'password123',
        email_confirm: true
    })

    if (createError) {
        console.error("❌ Failed to create user:", createError.message)
        process.exit(1)
    }
    console.log("✅ Created Test User:", testEmail)

    // Ensure profile exists (Trigger usually does this, but let's wait/verify)
    await new Promise(r => setTimeout(r, 2000)) // wait for trigger

    // Insert profile if not exists (fallback)
    const { error: profileErr } = await supabase.from('profiles').upsert({
        id: user.user.id,
        email: testEmail,
        role: 'user'
    })
    if (profileErr) console.log("⚠️ Profile manual insert notice:", profileErr.message)

    // 3. TESTING ACTIVATION (Monthly)
    console.log("👉 Testing Activation (Monthly - 30 days)...")
    try {
        const result = await activateSubscription(supabase, testEmail, 'monthly', 'tx_test_' + Date.now())
        console.log("✅ Activation Result:", result)

        // Verify DB
        const { data: sub } = await supabase.from('subscriptions').select('*').eq('user_id', user.user.id).eq('status', 'active').single()
        if (!sub) throw new Error("Subscription record missing in DB!")

        console.log("   Subscription Expires At:", sub.expires_at)

        const expiryDate = new Date(sub.expires_at)
        const now = new Date()
        const diffDays = (expiryDate - now) / (1000 * 60 * 60 * 24)

        if (diffDays > 29 && diffDays < 32) {
            console.log("   ✅ Expiration looks correct (~30 days)")
        } else {
            console.error("   ❌ Expiration incorrect! Days:", diffDays)
        }

    } catch (e) {
        console.error("❌ Activation Failed:", e)
    }

    // 4. TESTING EXPIRATION LOGIC
    console.log("👉 Testing Expiration Logic...")
    // Manually expire it
    await supabase.from('subscriptions').update({
        expires_at: new Date(Date.now() - 86400000).toISOString() // Yesterday
    }).eq('user_id', user.user.id)

    // Run Expiration Logic (Mimic cron-expire.js)
    const nowISO = new Date().toISOString()
    const { data: expiredSubs } = await supabase
        .from('subscriptions')
        .update({ status: 'expired', updated_at: nowISO })
        .eq('status', 'active')
        .lt('expires_at', nowISO)
        .select()

    console.log(`✅ Expired ${expiredSubs?.length} subscriptions (Expected >= 1)`)

    // Verify Profile Update (Mimic cron-expire.js part 2)
    await supabase.from('profiles').update({ plan_expira_em: new Date(Date.now() - 86400000).toISOString() }).eq('id', user.user.id)

    const { data: expiredProfiles } = await supabase
        .from('profiles')
        .update({ subscription_active: false, plan_status: 'expired' })
        .eq('subscription_active', true)
        .lt('plan_expira_em', nowISO)
        .select()

    console.log(`✅ Expired ${expiredProfiles?.length} profiles (Expected >= 1)`)

    // Final Check
    const { data: finalProfile } = await supabase.from('profiles').select('subscription_active, plan_status').eq('id', user.user.id).single()
    if (finalProfile.subscription_active === false && finalProfile.plan_status === 'expired') {
        console.log("🎉 FINAL SUCCESS: User correctly expired!")
    } else {
        console.error("❌ FINAL FAILURE: User still active?", finalProfile)
    }

    // Cleanup
    await supabase.auth.admin.deleteUser(user.user.id)
    console.log("🧹 Cleanup done.")
}

testFlow()
