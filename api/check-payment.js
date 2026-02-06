import { createClient } from '@supabase/supabase-js'
import { activateSubscription } from './services/subscription.js'

// Helper to sanitize env vars
const getEnv = (key) => {
    return process.env[key] || process.env[`VITE_${key}`]
}

export default async function handler(req, res) {
    // Enable CORS
    res.setHeader('Access-Control-Allow-Credentials', true)
    res.setHeader('Access-Control-Allow-Origin', '*')
    res.setHeader('Access-Control-Allow-Methods', 'GET,OPTIONS,POST')
    res.setHeader('Access-Control-Allow-Headers', 'X-CSRF-Token, X-Requested-With, Accept, Accept-Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version')

    if (req.method === 'OPTIONS') {
        res.status(200).end()
        return
    }

    if (req.method !== 'POST') {
        return res.status(405).json({ message: 'Method not allowed' })
    }

    const { transaction_id, intent_id } = req.body

    if (!transaction_id) {
        return res.status(400).json({ message: 'Missing transaction_id' })
    }

    // Initialize Supabase Client
    const supabaseUrl = getEnv('VITE_SUPABASE_URL') || getEnv('SUPABASE_URL')
    const supabaseKey = getEnv('SUPABASE_SERVICE_ROLE_KEY')
    const supabase = createClient(supabaseUrl, supabaseKey)

    try {
        const token = getEnv('VITE_PUSHINPAY_TOKEN') || getEnv('PUSHINPAY_TOKEN')

        if (!token) return res.status(500).json({ error: 'server_config_missing' })

        // 1. Check Status at PushinPay (Parallel Shotgun Strategy)
        const endpoints = [
            `https://api.pushinpay.com.br/api/transaction/${transaction_id}`,
            `https://api.pushinpay.com.br/api/transactions/${transaction_id}`,
            `https://api.pushinpay.com.br/api/pix/${transaction_id}`,
        ]

        console.log(`[CheckPayment] Parallel Probing tx: ${transaction_id}`)

        // Only wait for the first success
        const fetchEndpoint = async (url) => {
            const resp = await fetch(url, {
                method: 'GET',
                headers: { 'Authorization': `Bearer ${token}`, 'Accept': 'application/json' }
            })
            if (!resp.ok) throw new Error('fail')
            return await resp.json()
        }

        let pushinData = null
        try {
            pushinData = await Promise.any(endpoints.map(fetchEndpoint))
        } catch (e) {
            console.error("All endpoints failed")
        }

        // LOG ATTEMPT
        await supabase.from('integration_logs').insert({
            integration_name: 'check_payment_probes_parallel',
            event_name: 'final_result',
            status: pushinData ? 'ok' : 'all_failed',
            payload: { transaction_id, data: pushinData || 'NONE' },
            created_at: new Date()
        })

        if (!pushinData) return res.status(404).json({ error: 'upstream_error' })

        const status = pushinData.status || pushinData.data?.status

        // 2. If Paid, Force Approval
        if (status === 'paid' || status === 'approved') {

            // STRATEGY: Try to find user by ALL means possible
            // 1. By Intent ID (if provided)
            // 2. By Transaction ID in intents table
            // 3. By EMAIL inside the PushinPay response (Fail safe)

            let userEmail = null
            let planSlug = 'monthly' // Default

            // Try 1 & 2: Database Lookups
            if (intent_id) {
                const { data } = await supabase.from('payment_intents').select('*').eq('id', intent_id).single()
                if (data) {
                    userEmail = data.email
                    planSlug = data.plan_slug
                }
            }

            // Try 3: Extract from PIX response (The "Nuclear Option")
            if (!userEmail && pushinData.customer && pushinData.customer.email) {
                userEmail = pushinData.customer.email
                // Try to infer plan from price
                const cents = pushinData.value_cents || (pushinData.value * 100)
                if (cents > 20000) planSlug = 'lifetime'
                else if (cents > 5000) planSlug = 'annual'
            }

            if (userEmail) {
                console.log(`[CheckPayment] Unlocking user: ${userEmail}`)

                // FORCE APPROVAL via Direct Service
                try {
                    await activateSubscription(supabase, userEmail, planSlug, transaction_id)
                } catch (subError) {
                    console.error("Activation Failed:", subError)
                    // Log to Supabase for debugging
                    await supabase.from('integration_logs').insert({
                        integration_name: 'payment_activation_fail',
                        event_name: 'service_error',
                        status: 'error',
                        payload: { error: subError, email: userEmail, transaction_id },
                        created_at: new Date()
                    })
                    throw new Error(`Activation Error: ${subError.message}`)
                }

                return res.status(200).json({ status: 'paid', approved: true })
            } else {
                console.error("[CheckPayment] PAID but User Unknown!")
            }
        }

        return res.status(200).json({ status: status || 'pending', approved: false })

    } catch (error) {
        console.error('Check Status Error:', error)
        return res.status(500).json({ message: error.message })
    }
}
