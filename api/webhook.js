import { createClient } from '@supabase/supabase-js'

export default async function handler(req, res) {
    if (req.method !== 'POST') {
        return res.status(405).json({ error: 'Method not allowed' })
    }

    try {
        const supabaseUrl = process.env.VITE_SUPABASE_URL
        // NOTE: Function needs SERVICE_ROLE to bypass RLS and execute Admin RPCs
        // User must add SUPABASE_SERVICE_ROLE_KEY to Vercel Env Vars
        const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY

        if (!supabaseUrl || !supabaseServiceKey) {
            console.error('Missing Supabase Config')
            return res.status(500).json({ error: 'Server Config Error' })
        }

        const supabase = createClient(supabaseUrl, supabaseServiceKey)

        // Parse request body (PushinPay sends detailed JSON)
        const paymentData = req.body

        // Simple mapping: if paid, call Supabase RPC
        // PushinPay typically sends "status": "paid"
        if (paymentData.status === 'paid' || paymentData.status === 'approved') {
            // Extract relevant data (adjust based on actual PushinPay payload)
            // Usually they send 'metadata' or 'payer' email
            // We'll fall back to searching user by internal ID if transaction ID matches
            // But for now, let's assume we pass the email in payload or we call the universal webhook

            // FOR ROBUSTNESS: We call the RPC we defined earlier.
            // We need to map the incoming JSON to what our RPC expects.

            // NOTE: This is a proxy. In a real scenario, you'd map fields carefully.
            // For this "One-Click" request, we'll try to forward the payload.

            const { error } = await supabase.rpc('handle_payment_webhook', {
                p_email: paymentData.payer_email || paymentData.customer?.email,
                p_plan_slug: paymentData.metadata?.plan_slug || 'monthly', // default
                p_transaction_id: paymentData.id
            })

            if (error) throw error
        }

        return res.status(200).json({ success: true })
    } catch (err) {
        console.error('Webhook Error:', err)
        return res.status(500).json({ error: err.message })
    }
}
