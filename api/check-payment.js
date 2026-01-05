import { createClient } from '@supabase/supabase-js'

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

    // Initialize Supabase Client for Logging & RPC
    const supabaseUrl = getEnv('VITE_SUPABASE_URL') || getEnv('SUPABASE_URL')
    const supabaseKey = getEnv('SUPABASE_SERVICE_ROLE_KEY')
    let supabase = null

    if (supabaseUrl && supabaseKey) {
        supabase = createClient(supabaseUrl, supabaseKey)
    }

    try {
        const token = getEnv('VITE_PUSHINPAY_TOKEN') || getEnv('PUSHINPAY_TOKEN')

        // 🚨 DIAGNOSIS: Tell frontend if token is missing
        if (!token) {
            console.error('Server requires VITE_PUSHINPAY_TOKEN')
            if (supabase) {
                await supabase.from('integration_logs').insert({
                    integration_name: 'check_payment_error',
                    event_name: 'config_missing',
                    status: 'error',
                    payload: { error: 'Token not found' }
                })
            }
            return res.status(500).json({ error: 'server_config_missing', message: 'Token PushinPay nao configurado na Vercel' })
        }

        // 1. Check Status at PushinPay (Parallel Shotgun Strategy 🔫)
        const endpoints = [
            `https://api.pushinpay.com.br/api/transaction/${transaction_id}`,
            `https://api.pushinpay.com.br/api/transactions/${transaction_id}`,
            `https://api.pushinpay.com.br/api/pix/${transaction_id}`,
            `https://api.pushinpay.com.br/api/pix/cashIn/${transaction_id}`,
        ]

        console.log(`[CheckPayment] Parallel Probing tx: ${transaction_id}`)

        // Helper to fetch and return { ok, data, url }
        const fetchEndpoint = async (url) => {
            const controller = new AbortController()
            const timeoutId = setTimeout(() => controller.abort(), 8000) // 8s timeout per request

            try {
                const resp = await fetch(url, {
                    method: 'GET',
                    headers: {
                        'Authorization': `Bearer ${token}`,
                        'Accept': 'application/json'
                    },
                    signal: controller.signal
                })
                clearTimeout(timeoutId)
                if (!resp.ok) throw new Error(`${resp.status} at ${url}`)
                const data = await resp.json()
                return { data, url }
            } catch (e) {
                clearTimeout(timeoutId)
                throw e
            }
        }

        let firstSuccess = null

        // Try all, but we only care about the first SUCCESS
        try {
            firstSuccess = await Promise.any(endpoints.map(fetchEndpoint))
        } catch (aggError) {
            console.error("All endpoints failed", aggError)
        }

        const pushinData = firstSuccess?.data
        const usedEndpoint = firstSuccess?.url

        // LOG ATTEMPT
        if (supabase) {
            try {
                await supabase.from('integration_logs').insert({
                    integration_name: 'check_payment_probes_parallel',
                    event_name: 'final_result',
                    status: pushinData ? 'ok' : 'all_failed',
                    payload: {
                        transaction_id,
                        success_endpoint: usedEndpoint || 'NONE',
                        last_data: pushinData || 'NONE'
                    },
                    created_at: new Date()
                })
            } catch (e) { console.error("Log failed", e) }
        }

        if (!pushinData) {
            return res.status(404).json({
                error: 'upstream_error',
                status: 404,
                details: 'Tried 4 endpoints in parallel. All failed/404/Timed out.'
            })
        }

        // Check various status fields depending on endpoint
        const status = pushinData.status || pushinData.data?.status

        // 2. If Paid, Force Approval
        if (status === 'paid' || status === 'approved') {

            // Get Intent to find user info
            let intentData = null

            if (supabase) {
                if (intent_id) {
                    const { data } = await supabase.from('payment_intents').select('*').eq('id', intent_id).single()
                    intentData = data
                }

                if (!intentData) {
                    const { data } = await supabase.from('payment_intents').select('*').eq('transaction_id', transaction_id).single()
                    intentData = data
                }

                if (intentData) {
                    // FORCE APPROVAL via RPC
                    await supabase.rpc('handle_payment_webhook', {
                        p_email: intentData.email,
                        p_plan_slug: intentData.plan_slug || 'monthly',
                        p_transaction_id: transaction_id
                    })

                    return res.status(200).json({ status: 'paid', approved: true })
                }
            }
        }

        return res.status(200).json({
            status: status || 'pending',
            approved: false,
            debug_endpoint: usedEndpoint,
            debug_original_status: status
        })

    } catch (error) {
        console.error('Check Status Error:', error)
        return res.status(500).json({ message: error.message })
    }
}
