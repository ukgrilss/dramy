import { createClient } from '@supabase/supabase-js'

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

    try {
        const token = process.env.VITE_PUSHINPAY_TOKEN || process.env.PUSHINPAY_TOKEN

        // 🚨 DIAGNOSIS: Tell frontend if token is missing
        if (!token) {
            console.error('Server requires VITE_PUSHINPAY_TOKEN')
            return res.status(500).json({ error: 'server_config_missing', message: 'Token PushinPay nao configurado na Vercel' })
        }

        // 1. Check Status at PushinPay (Shotgun Strategy 🔫)
        // Documentation is unclear, so we try multiple likely endpoints.
        const endpoints = [
            `https://api.pushinpay.com.br/api/pix/${transaction_id}`,
            `https://api.pushinpay.com.br/api/transactions/${transaction_id}`,
            `https://api.pushinpay.com.br/api/transaction/${transaction_id}`,
            `https://api.pushinpay.com.br/api/pix/cashIn/${transaction_id}`, // Sometimes it's the creation endpoint with GET
            `https://api.pushinpay.com.br/pix/${transaction_id}`,
        ]

        let pushinResponse = null
        let pushinData = null
        let usedEndpoint = null

        console.log(`[CheckPayment] Probing endpoints for tx: ${transaction_id}`)

        for (const url of endpoints) {
            try {
                const resp = await fetch(url, {
                    method: 'GET',
                    headers: {
                        'Authorization': `Bearer ${token}`,
                        'Accept': 'application/json'
                    }
                })

                if (resp.ok) {
                    pushinResponse = resp
                    pushinData = await resp.json()
                    usedEndpoint = url
                    console.log(`[CheckPayment] Success at: ${url}`)
                    break;
                }
            } catch (e) { /* ignore network errors on probes */ }
        }

        // LOG ATTEMPT
        try {
            const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.SUPABASE_SERVICE_ROLE_KEY)
            await supabase.from('integration_logs').insert({
                integration_name: 'check_payment_probes',
                event_name: 'final_result',
                status: pushinResponse ? 'ok' : 'all_failed',
                payload: {
                    transaction_id,
                    success_endpoint: usedEndpoint,
                    last_data: pushinData
                },
                created_at: new Date()
            })
        } catch (e) { console.error("Log failed", e) }

        if (!pushinResponse || !pushinData) {
            console.error('PushinPay Check Failed on ALL endpoints')
            return res.status(404).json({
                error: 'upstream_error',
                status: 404,
                details: 'Tried 5 endpoints, all failed. Transaction might be invalid or explicity not found.'
            })
        }

        const status = pushinData.status // 'paid' or 'approved'

        // 2. If Paid, Force Approval
        if (status === 'paid' || status === 'approved') {
            const supabase = createClient(
                process.env.VITE_SUPABASE_URL,
                process.env.SUPABASE_SERVICE_ROLE_KEY
            )

            // Get Intent to find user info
            // Use intent_id if provided, otherwise try to find by transaction_id
            let intentData = null

            if (intent_id) {
                const { data } = await supabase.from('payment_intents').select('*').eq('id', intent_id).single()
                intentData = data
            }

            if (!intentData) {
                // Fallback: This might be dangerous if multiple intents share same ID, but transaction_id should be unique
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

        return res.status(200).json({ status: status || 'pending', approved: false })

    } catch (error) {
        console.error('Check Status Error:', error)
        return res.status(500).json({ message: error.message })
    }
}
