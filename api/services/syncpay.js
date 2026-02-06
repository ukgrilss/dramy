
import { createClient } from '@supabase/supabase-js'

// Cache token in memory (for warm lambdas)
let cachedToken = null
let tokenExpiry = 0

const getEnv = (key) => process.env[key] || process.env[`VITE_${key}`]

export const SyncPayService = {

    async getToken() {
        const now = Date.now()
        // Buffer of 60 seconds
        if (cachedToken && now < tokenExpiry - 60000) {
            return cachedToken
        }

        const clientId = getEnv('SYNCPAY_CLIENT_ID')
        const clientSecret = getEnv('SYNCPAY_CLIENT_SECRET')

        if (!clientId || !clientSecret) {
            throw new Error('SyncPay Credentials Missing')
        }

        console.log('[SyncPay] Authenticating...')
        const response = await fetch('https://api.syncpayments.com.br/api/partner/v1/auth-token', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                client_id: clientId,
                client_secret: clientSecret
            })
        })

        if (!response.ok) {
            const err = await response.text()
            throw new Error(`Auth Failed: ${err}`)
        }

        const data = await response.json() // { access_token, expires_in, ... }
        cachedToken = data.access_token // The token usually comes with pipe sometimes? Example showed "123...|..."
        // Ensure we handle "Bearer " prefix if needed? The example used it in header: "Authorization: Bearer <token>"

        tokenExpiry = now + (data.expires_in * 1000)
        return cachedToken
    },

    // Generate a valid random CPF for frictionless payment
    generateRandomCPF() {
        const rnd = (n) => Math.round(Math.random() * n)
        const mod = (dividend, divisor) => Math.round(dividend - (Math.floor(dividend / divisor) * divisor))

        const n1 = rnd(9)
        const n2 = rnd(9)
        const n3 = rnd(9)
        const n4 = rnd(9)
        const n5 = rnd(9)
        const n6 = rnd(9)
        const n7 = rnd(9)
        const n8 = rnd(9)
        const n9 = rnd(9)

        let d1 = n9 * 2 + n8 * 3 + n7 * 4 + n6 * 5 + n5 * 6 + n4 * 7 + n3 * 8 + n2 * 9 + n1 * 10
        d1 = 11 - (mod(d1, 11))
        if (d1 >= 10) d1 = 0

        let d2 = d1 * 2 + n9 * 3 + n8 * 4 + n7 * 5 + n6 * 6 + n5 * 7 + n4 * 8 + n3 * 9 + n2 * 10 + n1 * 11
        d2 = 11 - (mod(d2, 11))
        if (d2 >= 10) d2 = 0

        return `${n1}${n2}${n3}${n4}${n5}${n6}${n7}${n8}${n9}${d1}${d2}`
    },

    async createPix({ amount, description, payer, webhookUrl }) {
        const token = await this.getToken()

        // Validate Payer Data (with fallback)
        let safeCpf = (payer.document || payer.cpf || '').replace(/\D/g, '')

        if (!safeCpf) {
            console.log('[SyncPay] No CPF provided. Generating valid random CPF for frictionless checkout.')
            safeCpf = this.generateRandomCPF()
        }

        const payload = {
            amount: parseFloat(amount),
            description: description || 'Dramy Subscription',
            webhook_url: webhookUrl,
            client: {
                name: payer.name || 'Cliente Dramy',
                cpf: safeCpf,
                email: payer.email,
                phone: payer.phone ? payer.phone.replace(/\D/g, '') : '11999999999'
            }
        }

        const response = await fetch('https://api.syncpayments.com.br/api/partner/v1/cash-in', {
            method: 'POST',
            headers: {
                'Authorization': `Bearer ${token}`,
                'Content-Type': 'application/json',
                'Accept': 'application/json'
            },
            body: JSON.stringify(payload)
        })

        const data = await response.json()

        if (!response.ok) {
            console.error('[SyncPay] Create Pix Failed:', data)
            throw new Error(data.message || 'Payment Creation Failed')
        }

        return {
            transaction_id: data.identifier,
            qrcode: data.pix_code,
            raw: data
        }
    },

    async checkStatus(identifier) {
        const token = await this.getToken()

        const response = await fetch(`https://api.syncpayments.com.br/api/partner/v1/transaction/${identifier}`, {
            method: 'GET',
            headers: {
                'Authorization': `Bearer ${token}`,
                'Accept': 'application/json'
            }
        })

        if (!response.ok) {
            if (response.status === 404) return null
            throw new Error('Check Status Failed')
        }

        const json = await response.json()
        return json.data // { status: 'completed' | 'pending', ... }
    }
}
