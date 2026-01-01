
import { createClient } from '@supabase/supabase-js'
import dotenv from 'dotenv'
import fs from 'fs'
import path from 'path'

// Load env
const envPath = path.resolve(process.cwd(), '.env.local')
const envConfig = dotenv.parse(fs.readFileSync(envPath))

const supabaseUrl = envConfig.VITE_SUPABASE_URL
const supabaseAnonKey = envConfig.VITE_SUPABASE_ANON_KEY

if (!supabaseUrl || !supabaseAnonKey) {
    console.error('❌ Missing credentials in .env.local')
    process.exit(1)
}

const supabase = createClient(supabaseUrl, supabaseAnonKey)

async function testTrial() {
    console.log('🔄 Starting Trial Debug (V2)...')

    // 1. Create unique test user
    const email = `debug_trial_${Date.now()}@test.com`
    const password = 'password123'

    console.log(`👤 Creating user: ${email}`)
    const { data: authData, error: authError } = await supabase.auth.signUp({
        email,
        password
    })

    if (authError) {
        console.error('❌ Auth Failed:', authError.message)
        return
    }

    const userId = authData.user?.id
    if (!userId) {
        console.error('❌ No user ID returned')
        return
    }
    console.log(`✅ User created: ${userId}`)

    // 2. Call RPC V2
    console.log('📞 Calling register_trial_access_v2...')

    // Fake fingerprint
    const fingerprint = `debug_fp_${Date.now()}`

    const { data, error } = await supabase.rpc('register_trial_access_v2', {
        p_ip_address: '127.0.0.1',
        p_fingerprint: fingerprint,
        p_user_agent: 'DebugScript/1.0',
        p_user_id: userId
    })

    if (error) {
        console.error('❌ RPC Error:', error)
        console.error('DETAILS: Code:', error.code, 'Message:', error.message)
        if (error.code === '42883') {
            console.error('💡 HINT: Function does not exist. Did you run FIX_TRIAL_V2.sql?')
        }
        return
    }

    console.log('🔍 RPC Result:', data)

    if (data.success) {
        console.log('✅ TRIAL ACTIVATED SUCCESSFULLY!')
        console.log('   Expires:', data.expires_at)
        console.log('   Balance:', data.balance)
    } else {
        console.log('⚠️ Trail Not Activated. Reason:', data.message)
    }

    // 3. Verify Profile directly if possible
    // (Needs admin/service role usually, but let's try reading as the user if we had a session, 
    // but here we are anon client calling RPC. The RPC should have updated the profile.)
}

testTrial()
