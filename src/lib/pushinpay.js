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
                    value: amountInCents / 100, // API expects Reais (e.g. 9.99), not Cents (999)
                    webhook_url: 'https://dramy.com.br/api/webhook',
                    metadata: {
                        email: userEmail,
                        intent_id: intentId,
                        app_name: 'dramy'
                    },
                    payer: {
                        email: userEmail,
                        name: payerName,
                        ...(payerDoc ? { document: payerDoc } : {}) // Only send if we have a real one
                    }
                })
            })

            const text = await response.text()
            console.log("Raw Response from /api/create-pix:", text)

            let data
            try {
                data = JSON.parse(text)
            } catch (e) {
                console.error("JSON Parse Error:", e)
                throw new Error(`Erro na API (Resposta Inválida): ${text.substring(0, 100)}`)
            }

            if (!response.ok) {
                console.error('PushinPay API Error:', data)
                // Dump the whole object to find out what's wrong
                throw new Error(data.message || `Erro API ${response.status}: ${JSON.stringify(data)}`)
            }

            // ✅ NORMALIZATION: Ensure we have a standard ID
            // PushinPay sometimes returns 'id', 'transaction_id', or 'orderId'
            data.id = data.id || data.orderId || data.transaction_id || data.uuid

            return data
        } catch (error) {
            console.error('PushinPay Integration Error:', error)
            // DEBUG: Show alert to user to identify the issue
            alert(`Erro no PIX: ${error.message}`)
            throw error // Stop execution, don't use mock data for now
        }
    }
}
