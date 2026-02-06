import { createClient } from '@supabase/supabase-js'
import { SyncPayService } from './services/syncpay.js'

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

    try {
        const { value, webhook_url, metadata, payer } = req.body
        const intentId = metadata?.intent_id

        if (!intentId) throw new Error("Missing Intent ID")

        // 1. Create Charge in SyncPay
        const result = await SyncPayService.createPix({
            amount: value,
            description: `Order ${intentId}`,
            webhookUrl: webhook_url, // Or user provided URL
            payer: payer
        })

        // 2. Update Supabase
        const supabase = createClient(
            process.env.VITE_SUPABASE_URL,
            process.env.SUPABASE_SERVICE_ROLE_KEY
        )

        const { error: dbError } = await supabase
            .from('payment_intents')
            .update({
                transaction_id: result.transaction_id,
                gateway: 'syncpay'
            })
            .eq('id', intentId)

        if (dbError) console.error("Failed to link transaction ID:", dbError)

        // 3. Return Standardized Response
        // Frontend expects: { qr_code (base64 or string), transaction_id, ... }
        // SyncPay returns 'pix_code' (copy paste). Does it return qr_code_base64? 
        // Docs said "pix_code serves as copy paste and QRCode". Usually it's the EMV string.
        // Frontend likely uses a library to render QR from this string.

        return res.status(200).json({
            ...result,
            // Map for compatibility if needed
            pix_code: result.qrcode,
            qr_code: result.qrcode // Frontend (PaymentModal) expects 'qr_code'
        })

    } catch (error) {
        console.error('Create Pix Error:', error)
        // Ensure we send a valid JSON error response
        // Using return here to ensure no further execution
        res.status(500).json({
            message: error.message || 'Erro interno no servidor de pagamento',
            details: error.stack
        })
    }
}
