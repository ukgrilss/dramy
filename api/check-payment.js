import { createClient } from '@supabase/supabase-js'
import { activateSubscription } from './services/subscription.js'
import { SyncPayService } from './services/syncpay.js'

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
        console.log(`[CheckPayment] SyncPay Probe tx: ${transaction_id}`)

        // 1. Check Status using SyncPay Service
        let syncData = null
        try {
            syncData = await SyncPayService.checkStatus(transaction_id)
        } catch (e) {
            console.error("[CheckPayment] SyncPay Fail:", e)
        }

        if (!syncData) return res.status(404).json({ error: 'transaction_not_found' })

        const status = syncData.status // 'completed', 'pending'
        const isPaid = status === 'completed' || status === 'paid' // handle both just in case

        // 2. If Paid, Force Approval
        if (isPaid) {
            let userEmail = null
            let planSlug = 'monthly' // Default
            let userId = null

            // Try 1: Database Lookups
            if (intent_id) {
                const { data } = await supabase.from('payment_intents').select('*').eq('id', intent_id).single()
                if (data) {
                    userEmail = data.email
                    planSlug = data.plan_slug
                    userId = data.user_id
                }
            } else {
                // Try looking up by transaction_id if intent_id missing
                const { data } = await supabase.from('payment_intents').select('*').eq('transaction_id', transaction_id).single()
                if (data) {
                    userEmail = data.email
                    planSlug = data.plan_slug
                    userId = data.user_id
                }
            }

            if (userEmail) {
                console.log(`[CheckPayment] Unlocking user: ${userEmail}`)

                // FORCE APPROVAL via Direct Service
                try {
                    await activateSubscription(supabase, userEmail, planSlug, transaction_id, userId)
                } catch (subError) {
                    console.error("Activation Failed:", subError)
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
