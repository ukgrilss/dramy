
export default function handler(req, res) {
    const sbUrl = process.env.VITE_SUPABASE_URL || process.env.SUPABASE_URL
    const sbKey = process.env.SUPABASE_SERVICE_ROLE_KEY

    res.status(200).json({
        status: 'alive',
        time: new Date().toISOString(),
        env_check: {
            PUSHINPAY_TOKEN: process.env.VITE_PUSHINPAY_TOKEN ? 'OK' : 'MISSING',
            SUPABASE_URL: sbUrl ? 'OK' : 'MISSING',
            SUPABASE_KEY_ROLE: sbKey ? 'OK' : 'MISSING (CRITICAL)'
        }
    })
}
