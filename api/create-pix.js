export default async function handler(req, res) {
    // Enable CORS for the frontend
    res.setHeader('Access-Control-Allow-Credentials', true)
    res.setHeader('Access-Control-Allow-Origin', '*')
    res.setHeader('Access-Control-Allow-Methods', 'GET,OPTIONS,PATCH,DELETE,POST,PUT')
    res.setHeader(
        'Access-Control-Allow-Headers',
        'X-CSRF-Token, X-Requested-With, Accept, Accept-Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version'
    )

    if (req.method === 'OPTIONS') {
        res.status(200).end()
        return
    }

    if (req.method !== 'POST') {
        return res.status(405).json({ message: 'Method not allowed' })
    }

    try {
        const { value, webhook_url, metadata, payer } = req.body

        // Get Token from Env (Server Side)
        const token = process.env.VITE_PUSHINPAY_TOKEN || process.env.PUSHINPAY_TOKEN

        if (!token) {
            throw new Error('Server limit: Missing Configuration')
        }

        const response = await fetch('https://api.pushinpay.com.br/api/pix/cashIn', {
            method: 'POST',
            headers: {
                'Authorization': `Bearer ${token}`,
                'Content-Type': 'application/json',
                'Accept': 'application/json'
            },
            body: JSON.stringify({
                value,
                webhook_url,
                metadata,
                payer
            })
        })

        const data = await response.json()

        if (!response.ok) {
            console.error('PushinPay Access Error:', data)
            return res.status(response.status).json(data)
        }

        return res.status(200).json(data)

    } catch (error) {
        console.error('Proxy Error:', error)
        return res.status(500).json({ message: error.message })
    }
}
