
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

    async createPix({ amount, description, payer, webhookUrl }) {
        const token = await this.getToken()

        // Validate Payer Data
        const rawCpf = payer.document || payer.cpf || ''
        const safeCpf = rawCpf.replace(/\D/g, '')

        if (!safeCpf) {
            console.error('[SyncPay] Missing CPF for user:', payer.email)
            throw new Error('CPF é obrigatório para o pagamento.')
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
