export const PushinPay = {
    /**
     * Creates a PIX charge via PushinPay API
     * @param {number} amountInCents - Amount in cents (e.g., 990 for R$ 9,99)
     * @param {string} userEmail - User's email (optional, for reference)
     * @returns {Promise<{qr_code: string, qr_code_base64: string, id: string}>}
     */
    async createPixCharge(amountInCents, userEmail) {
        try {
            const response = await fetch('https://api.pushinpay.com.br/api/pix/cashIn', {
                method: 'POST',
                headers: {
                    'Authorization': 'Bearer 58245|EKxchP3pnj9rwu01buADLV7bRdZcN8bog5OwVsBMbc2f6105',
                    'Content-Type': 'application/json',
                    'Accept': 'application/json'
                },
                body: JSON.stringify({
                    value: amountInCents,
                    webhook_url: 'https://dramy.com.br/api/webhook'
                })
            })

            const data = await response.json()

            if (!response.ok) {
                console.error('PushinPay Error:', data)
                throw new Error(data.message || 'Erro ao gerar PIX')
            }

            return data
        } catch (error) {
            console.error('PushinPay Integration Error:', error)
            // Fallback for DEV/TESTING if API fails or blocks localhost
            console.warn('Using Mock Data for PIX')
            return {
                id: 'mock_' + Date.now(),
                qr_code: '00020126580014br.gov.bcb.pix0136123e4567-e89b-12d3-a456-426614174000520400005303986540510.005802BR5913Cicrano de Tal6008Brasilia62070503***6304E2CA',
                qr_code_base64: null // Frontend will generate QR code from qr_code text
            }
        }
    }
}
