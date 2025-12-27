
import { createClient } from '@supabase/supabase-js'

export default async function handler(req, res) {
    // 1. GET Request: Browser Check + Diagnostic
    if (req.method === 'GET') {
        const hasUrl = !!process.env.VITE_SUPABASE_URL
        const hasKey = !!process.env.SUPABASE_SERVICE_ROLE_KEY

        const statusData = {
            status: 'online',
            environment_check: {
                VITE_SUPABASE_URL: hasUrl ? 'OK' : 'MISSING',
                SUPABASE_SERVICE_ROLE_KEY: hasKey ? 'OK' : 'MISSING (CRITICAL)'
            },
            message: hasKey
                ? 'System Healthy. Ready for payments.'
                : 'SYSTEM ERROR: Please add SUPABASE_SERVICE_ROLE_KEY to Vercel Settings.'
        }

        return res.status(200).json(statusData)
    }

    // 2. Block non-POST
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

        // 3. LOG REQUEST (Try/Catch to avoid crash if table missing)
        try {
            await supabase.from('webhook_logs').insert({
                method: 'POST',
                payload: paymentData,
                headers: req.headers || {},
                status: 'received'
            })
        } catch (logErr) {
            console.warn('Log failed:', logErr.message)
        }

        // 4. CHECK PAYMENT
        const isPaid = paymentData.status === 'paid' ||
            paymentData.status === 'approved' ||
            paymentData.status === 'COMPLETED'

        if (isPaid) {
            const userEmail = paymentData.metadata?.email ||
                paymentData.payer_email ||
                paymentData.customer?.email

            const planSlug = paymentData.metadata?.plan_slug || 'monthly'
            const txId = paymentData.id || `tx_${Date.now()}`

            if (!userEmail) throw new Error('Email not found in payload')

            // APPROVE
            const { error } = await supabase.rpc('handle_payment_webhook', {
                p_email: userEmail,
                p_plan_slug: planSlug,
                p_transaction_id: txId
            })

            if (error) throw error

            // Log Success
            try {
                await supabase.from('webhook_logs').insert({
                    status: 'success_approved',
                    payload: { userEmail, planSlug, txId }
                })
            } catch (e) { }

        } else {
            // Log Ignore
            try {
                await supabase.from('webhook_logs').insert({
                    status: 'ignored_status',
                    payload: { status: paymentData?.status }
                })
            } catch (e) { }
        }

        return res.status(200).json({ success: true })

    } catch (err) {
        console.error('Webhook Error:', err)
        return res.status(500).json({ error: err.message })
    }
}
