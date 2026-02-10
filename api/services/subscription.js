
import { createClient } from '@supabase/supabase-js'

// Helper to calculate expiration date
const calculateExpiration = (durationDays) => {
    const date = new Date()
    date.setDate(date.getDate() + durationDays)
    return date.toISOString()
}

export const activateSubscription = async (supabase, email, planSlug, transactionId, userId = null) => {
    console.log(`[SubscriptionService] Activating for ${email} (User ID: ${userId || 'Not provided'}) plan ${planSlug}`)

    // 1. Get User ID (Strategy: Prop > Profile > Auth List)
    let targetUserId = userId

    if (!targetUserId) {
        // Try getting from Profiles (Public/Accessible table usually)
        const { data: userData } = await supabase
            .from('profiles')
            .select('id')
            .eq('email', email)
            .single()

        if (userData) {
            targetUserId = userData.id
        }
    }

    if (!targetUserId) {
        // Fallback: Try getting from Auth Admin (Warning: paginated, unreliable for large bases)
        // Ideally we should use getUserByEmail if available in the client version, but listUsers is what was here.
        console.warn(`[SubscriptionService] User ID not provided and not found in profiles for ${email}. Falling back to listUsers (unreliable).`)
        const { data: { users }, error: authError } = await supabase.auth.admin.listUsers()
        const user = users?.find(u => u.email === email)
        if (user) targetUserId = user.id
    }

    if (!targetUserId) {
        throw new Error(`User not found for email: ${email}`)
    }

    // 2. Get Plan Details
    const { data: planData } = await supabase
        .from('plans')
        .select('*')
        .eq('slug', planSlug)
        .single()

    const durationDays = planData?.duration_days || 30 // Default 30
    const expiresAt = calculateExpiration(durationDays)

    // 3. Cancel active subscriptions
    await supabase
        .from('subscriptions')
        .update({ status: 'canceled', updated_at: new Date() })
        .eq('user_id', targetUserId)
        .eq('status', 'active')

    // 4. Create new Subscription
    const { error: subError } = await supabase
        .from('subscriptions')
        .insert({
            user_id: targetUserId,
            plan: planSlug,
            status: 'active',
            expires_at: expiresAt,
            transaction_id: transactionId,
            created_at: new Date(),
            updated_at: new Date()
        })

    if (subError) {
        console.error('[SubscriptionService] Failed to insert subscription:', subError)
        throw subError
    }

    // 5. Update Profile
    const { error: profileError } = await supabase
        .from('profiles')
        .update({
            subscription_active: true,
            plan_atual: planSlug,
            plan_status: 'active',
            plan_expira_em: expiresAt
            // updated_at: new Date() // Column might be missing in older schemas
        })
        .eq('id', targetUserId)

    if (profileError) {
        console.error('[SubscriptionService] Failed to update profile:', profileError)
        // Non-fatal, as subscription table is the source of truth for dashboard
    }

    return { success: true, expiresAt }
}
