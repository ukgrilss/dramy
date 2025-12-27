
import { createClient } from '@supabase/supabase-js'

export default async function handler(req, res) {
    // 1. Allow GET for Browser verification
    if (req.method === 'GET') {
        return res.status(200).json({
            status: 'online',
            message: 'Webhook is active and ready for payments.'
        })
    }

    // 2. Block non-POST for safety
    if (req.method !== 'POST') {
        return res.status(405).json({ error: 'Method not allowed' })
    }

    try {
        const supabaseUrl = process.env.VITE_SUPABASE_URL
        // SERVICE_ROLE_KEY is required for Admin actions (logging, approving)
        const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY

        if (!supabaseUrl || !supabaseServiceKey) {
            console.error('SERVER ERROR: Missing Env Vars')
            return res.status(500).json({ error: 'Server Config Error: Missing Service Key' })
        }

        const supabase = createClient(supabaseUrl, supabaseServiceKey)
        const paymentData = req.body

        // 3. LOG RAW REQUEST (If logs table exists)
        // We use a try-catch for the log insert so it doesn't crash the main flow if table is missing
        try {
            await supabase.from('webhook_logs').insert({
                method: 'POST',
                payload: paymentData,
                headers: req.headers || {},
                status: 'received'
            })
        } catch (logErr) {
            console.warn('Log failed (table might be missing):', logErr.message)
        }

        // 4. CHECK PAYMENT STATUS
        // PushinPay usually sends { status: 'paid' } or { status: 'approved' }
        // We check loosely to catch variations
        const isPaid = paymentData.status === 'paid' ||
            paymentData.status === 'approved' ||
            paymentData.status === 'COMPLETED'

        if (isPaid) {
            // Extract Email
            // Priority: metadata > payer_email > customer.email
            const userEmail = paymentData.metadata?.email ||
                paymentData.payer_email ||
                paymentData.customer?.email

            const planSlug = paymentData.metadata?.plan_slug || 'monthly'
            const txId = paymentData.id || `tx_${Date.now()}`

            if (!userEmail) {
                throw new Error('Email not found in payload')
            }

            // CALL DATABASE RPC TO APPROVE
            const { error } = await supabase.rpc('handle_payment_webhook', {
                p_email: userEmail,
                p_plan_slug: planSlug,
                p_transaction_id: txId
            })

            if (error) throw error

            // Update Log
            try {
                await supabase.from('webhook_logs').insert({
                    status: 'success_approved',
                    payload: { userEmail, planSlug, txId }
                })
            } catch (e) { }

        } else {
            console.log('Payment not approved yet:', paymentData.status)
        }

        return res.status(200).json({ success: true })

    } catch (err) {
        console.error('Webhook Error:', err)
        return res.status(500).json({ error: err.message })
    }
}
