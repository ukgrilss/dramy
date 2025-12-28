
import { createClient } from '@supabase/supabase-js'

/**
 * UTMify Strict Integration Service
 * Contract:
 * - Endpoint: https://api.utmify.com.br/api-credentials/orders
 * - Header: x-api-token
 * - Dates: YYYY-MM-DD HH:MM:SS (UTC)
 */

// Format Date to YYYY-MM-DD HH:MM:SS (UTC)
// Absolutely NO ISO or Timezone leakage
function formatStatsDate(dateInput) {
    const d = new Date(dateInput)
    if (isNaN(d.getTime())) return null

    // Explicitly use UTC methods to avoid server timezone issues
    const year = d.getUTCFullYear()
    const month = String(d.getUTCMonth() + 1).padStart(2, '0')
    const day = String(d.getUTCDate()).padStart(2, '0')
    const hours = String(d.getUTCHours()).padStart(2, '0')
    const minutes = String(d.getUTCMinutes()).padStart(2, '0')
    const seconds = String(d.getUTCSeconds()).padStart(2, '0')

    return `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`
}

/**
 * Sends an order event to UTMify following strict payload rules.
 * @param {Object} params - The order parameters
 * @param {string} params.orderId - Unique Transaction ID (Must match between states)
 * @param {string} params.status - 'waiting_payment' | 'paid'
 * @param {number} params.valueInCents - Order Total
 * @param {string} params.createdAt - Creation Date (YYYY-MM-DD HH:MM:SS) - MUST BE CONSISTENT
 * @param {string|null} params.approvedDate - Approval Date (YYYY-MM-DD HH:MM:SS) or null
 * @param {Object} params.customer - { name, email, phone, document, ip }
 * @param {Object} params.utm - { src, sck, utm_source, ... }
 * @param {string} [params.eventName] - For logging purposes (e.g., 'pix_created')
 */
export async function sendUtmifyOrder({
    orderId,
    status,
    valueInCents,
    createdAt,
    approvedDate,
    customer,
    utm,
    eventName
}) {
    if (!process.env.UTMIFY_API_KEY) {
        console.warn('[UTMify] Skipped: Missing UTMIFY_API_KEY env var.')
        return { success: false, error: 'missing_env' }
    }

    const endpoint = 'https://api.utmify.com.br/api-credentials/orders'

    // VALIDATION: Ensure strict payload compliance
    // Products CANNOT be empty. Commission CANNOT be zero (if possible).

    // 1. Prepare Products Array (Mandatory)
    const products = [{
        id: 'main-subscription',
        name: 'Assinatura Premium', // Generic name acceptable? User said "NomeDoSaaS" in platform
        planId: 'monthly',
        planName: 'Mensal',
        quantity: 1,
        priceInCents: valueInCents > 0 ? valueInCents : 1 // Never 0
    }]

    // 2. Prepare Commission (Mandatory)
    const commission = {
        totalPriceInCents: valueInCents,
        gatewayFeeInCents: 0, // Unknown, safe to 0
        userCommissionInCents: valueInCents // Cannot be 0 per specs if user received something.
    }

    // 3. Prepare Customer (Mandatory)
    // "name" cannot be null/empty. "email" cannot be null/empty.
    const safeCustomer = {
        name: customer.name || 'Cliente Desconhecido',
        email: customer.email || 'email_nao_informado@user.com',
        phone: customer.phone || null,
        document: customer.document || null,
        country: 'BR',
        ip: customer.ip || '127.0.0.1' // 🛡️ STRICT RULE: Never NULL. Default to localhost if missing.
    }

    // 4. Construct Final Payload
    const payload = {
        orderId: orderId,
        platform: 'DramaFlix', // Hardcoded or Env? User example: "GlobalPay". Let's use SaaS Name.
        paymentMethod: 'pix',
        status: status, // 'waiting_payment' or 'paid'
        createdAt: createdAt, // STRICT format passed from caller
        approvedDate: approvedDate, // null or STRICT format
        refundedAt: null,
        customer: safeCustomer,
        products: products,
        trackingParameters: {
            src: null,
            sck: null,
            utm_source: utm?.utm_source || null,
            utm_campaign: utm?.utm_campaign || null,
            utm_medium: utm?.utm_medium || null,
            utm_content: utm?.utm_content || null,
            utm_term: utm?.utm_term || null
        },
        commission: commission,
        isTest: false
    }

    // --- LOG BEFORE SEND ---
    console.log(`[UTMify] Sending ${eventName || status}...`)
    console.log("UTMIFY PAYLOAD:", JSON.stringify(payload, null, 2))

    try {
        const response = await fetch(endpoint, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'x-api-token': process.env.UTMIFY_API_KEY // STRICT HEADER
            },
            body: JSON.stringify(payload)
        })

        // --- LOG AFTER SEND ---
        console.log("UTMIFY STATUS:", response.status)
        const respText = await response.text()
        console.log("UTMIFY RESPONSE:", respText)

        let respJson = {}
        try { respJson = JSON.parse(respText) } catch (e) { }

        if (!response.ok) {
            throw new Error(`HTTP Error ${response.status}: ${respText}`)
        }

        return { success: true, response: respJson, payload }

    } catch (err) {
        console.error('[UTMify] Request Failed:', err.message)
        return { success: false, error: err.message, payload }
    }
}

export { formatStatsDate }
