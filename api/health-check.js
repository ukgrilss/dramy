
export default function handler(req, res) {
    res.status(200).json({
        status: 'alive',
        time: new Date().toISOString(),
        env_check: process.env.VITE_PUSHINPAY_TOKEN ? 'TOKEN_OK' : 'TOKEN_MISSING'
    })
}
