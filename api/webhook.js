
import { createClient } from '@supabase/supabase-js'

export default async function handler(req, res) {
    // 1. GET Request: Browser Check for Vercel Env Vars
    if (req.method === 'GET') {
        return res.status(200).json({
            status: 'online',
            env_check: {
                VITE_SUPABASE_URL: !!process.env.VITE_SUPABASE_URL ? 'OK' : 'MISSING',
                SUPABASE_SERVICE_ROLE_KEY: !!process.env.SUPABASE_SERVICE_ROLE_KEY ? 'OK' : 'MISSING'
            }
        })
    }

    if (req.method !== 'POST') {
        return res.status(405).json({ error: 'Method not allowed' })
    }

    try {
        const supabaseUrl = process.env.VITE_SUPABASE_URL
        const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY

        if (!supabaseUrl || !supabaseServiceKey) {
            console.error('SERVER ERROR: Missing Env Vars')
            return res.status(500).json({ error: 'Server Config Error: Missing Service Key' })
        }

        const supabase = createClient(supabaseUrl, supabaseServiceKey)
        const paymentData = req.body

        // PushinPay sends 'id' as the Transaction ID
        const txId = paymentData.id || paymentData.data?.id

        // 3. LOG RAW REQUEST (Crucial for debugging)
        try {
            await supabase.from('webhook_logs').insert({
                method: 'POST',
                payload: paymentData,
                status: 'received_v3_final'
            })
        } catch (e) { }

        const isPaid = paymentData.status === 'paid' || paymentData.status === 'approved'

        if (isPaid && txId) {
            let userEmail = null
            let planSlug = 'monthly'

            // 4. LOOKUP INTENT ( The "Memory" System )
            // We search who generated this PIX ID (Using ilike for case-insensitivity)
            const { data: intent, error: intentError } = await supabase
                .from('payment_intents')
                .select('*')
                .ilike('transaction_id', txId) // Changed from eq to ilike
                .single()

            if (intent) {
                userEmail = intent.email
                planSlug = intent.plan_slug

                // Log Success Finding User
                await supabase.from('webhook_logs').insert({
                    status: 'intent_found',
                    payload: { txId, email: userEmail, plan: planSlug }
                })

            } else {
                // Log Failure Finding User
                await supabase.from('webhook_logs').insert({
                    status: 'intent_missing',
                    payload: { txId, error: intentError?.message }
                })

                // Fallback: Try to find email in metadata (usually stripped by Gateway, but worth a try)
                userEmail = paymentData.metadata?.email || paymentData.payer_email
            }

            if (!userEmail) {
                throw new Error(`CRITICAL: Could not identify user for Payment ID ${txId}. Intent missing and no email in payload.`)
            }

            // 5. APPROVE ACCESS
            const { error } = await supabase.rpc('handle_payment_webhook', {
                p_email: userEmail,
                p_plan_slug: planSlug,
                p_transaction_id: txId
            })

            if (error) throw error

            // Log Final Success
            await supabase.from('webhook_logs').insert({
                status: 'success_approved_final',
                payload: { email: userEmail, txId }
            })

        }

        return res.status(200).json({ success: true })

    } catch (err) {
        console.error('Webhook Error:', err)
        // Log Crash
        try {
            const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.SUPABASE_SERVICE_ROLE_KEY)
            await supabase.from('webhook_logs').insert({
                status: 'function_crash',
                error_message: err.message
            })
        } catch (e) { }
        return res.status(500).json({ error: err.message })
    }
}
