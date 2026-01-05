export const PushinPay = {
    /**
     * Creates a PIX charge via PushinPay API
     * @param {number} amountInCents - Amount in cents (validated by server)
     * @param {string} userEmail - User's email
     * @param {string} intentId - Payment intent ID from database
     * @returns {Promise<{qr_code: string, qr_code_base64: string, id: string}>}
     */
    async createPixCharge(amountInCents, userEmail, intentId) {
        try {
            const response = await fetch('https://api.pushinpay.com.br/api/pix/cashIn', {
                method: 'POST',
                headers: {
                    'Authorization': `Bearer ${import.meta.env.VITE_PUSHINPAY_TOKEN || '58245|EKxchP3pnj9rwu01buADLV7bRdZcN8bog5OwVsBMbc2f6105'}`,
                    'Content-Type': 'application/json',
                    'Accept': 'application/json'
                },
                body: JSON.stringify({
                    value: amountInCents, // ✅ Now validated by server!
                    webhook_url: 'https://dramy.com.br/api/webhook',
                    metadata: {
                        email: userEmail,
                        intent_id: intentId, // Track payment intent
                        app_name: 'dramy'
                    },
                    payer: {
                        email: userEmail
                    }
                })
            })

            const data = await response.json()

            if (!response.ok) {
                console.error('PushinPay API Error:', data)
                throw new Error(data.message || `Erro API: ${response.status}`)
            }

            return data
        } catch (error) {
            console.error('PushinPay Integration Error:', error)
            // DEBUG: Show alert to user to identify the issue
            alert(`Erro no PIX: ${error.message}`)
            throw error // Stop execution, don't use mock data for now
        }
    }
}
