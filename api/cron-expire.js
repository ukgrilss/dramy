
import { createClient } from '@supabase/supabase-js'

export default async function handler(req, res) {
    if (req.method !== 'POST' && req.method !== 'GET') {
        return res.status(405).json({ message: 'Method not allowed' })
    }

    const { force } = req.query

    // Basic security token if needed (optional for now as Vercel crons work differently)
    // if (req.query.key !== process.env.CRON_KEY) ...

    const supabase = createClient(
        process.env.VITE_SUPABASE_URL,
        process.env.SUPABASE_SERVICE_ROLE_KEY
    )

    try {
        const now = new Date().toISOString()

        // 1. Expire Subscriptions
        const { data: expiredSubs, error: subError } = await supabase
            .from('subscriptions')
            .update({ status: 'expired', updated_at: now })
            .eq('status', 'active')
            .lt('expires_at', now)
            .select('id, user_id')

        if (subError) throw subError

        // 2. Expire Profiles
        const { data: expiredProfiles, error: profileError } = await supabase
            .from('profiles')
            .update({
                subscription_active: false,
                plan_status: 'expired',
                updated_at: now
            })
            .eq('subscription_active', true)
            .lt('plan_expira_em', now)
            .select('id, email')

        if (profileError) throw profileError

        return res.status(200).json({
            success: true,
            expired_subscriptions: expiredSubs?.length || 0,
            expired_profiles: expiredProfiles?.length || 0
        })

    } catch (error) {
        console.error('Cron Expire Error:', error)
        return res.status(500).json({ error: error.message })
    }
}
