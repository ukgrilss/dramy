export const PushinPay = {
    /**
     * Creates a PIX charge via PushinPay API
     * @param {number} amountInCents - Amount in cents (validated by server)
     * @param {string} userEmail - User's email
     * @param {string} intentId - Payment intent ID from database
     * @returns {Promise<{qr_code: string, qr_code_base64: string, id: string}>}
     */
    async createPixCharge(amountInCents, userEmail, intentId, payerName = 'Cliente', payerDoc = '') {
        try {
            // Use our own Vercel Proxy to avoid CORS and hide the Token
            const response = await fetch('/api/create-pix', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Accept': 'application/json'
                },
                body: JSON.stringify({
                    value: amountInCents,
                    webhook_url: 'https://dramy.com.br/api/webhook',
                    metadata: {
                        email: userEmail,
                        intent_id: intentId,
                        app_name: 'dramy'
                    },
                    payer: {
                        email: userEmail,
                        name: payerName,
                        document: payerDoc || '00000000000' // Fallback to avoid error if mandatory
                    }
                })
            })

            const data = await response.json()

            if (!response.ok) {
                console.error('PushinPay API Error:', data)
                const errorDetails = data.errors ? JSON.stringify(data.errors) : (data.message || response.statusText)
                throw new Error(`Erro API ${response.status}: ${errorDetails}`)
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
