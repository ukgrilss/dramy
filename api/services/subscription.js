
import { createClient } from '@supabase/supabase-js'

// Helper to calculate expiration date
const calculateExpiration = (durationDays) => {
    const date = new Date()
    date.setDate(date.getDate() + durationDays)
    return date.toISOString()
}

export const activateSubscription = async (supabase, email, planSlug, transactionId) => {
    console.log(`[SubscriptionService] Activating for ${email} plan ${planSlug}`)

    // 1. Get User
    const { data: userData, error: userError } = await supabase
        .from('profiles') // Check profiles first as it is public usually
        .select('id')
        .eq('email', email)
        .single()
    
    // If not in profiles, try auth.users via admin? No, we can't access auth.users directly via client 
    // unless we use service_role and auth.admin.listUsers usually.
    // BUT we passed the 'supabase' client which should be initialized with SERVICE_ROLE_KEY.
    
    let userId = userData?.id

    if (!userId) {
        // Try getting from Auth Admin
        const { data: { users }, error: authError } = await supabase.auth.admin.listUsers()
        const user = users?.find(u => u.email === email)
        if (user) userId = user.id
    }

    if (!userId) {
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
        .eq('user_id', userId)
        .eq('status', 'active')

    // 4. Create new Subscription
    const { error: subError } = await supabase
        .from('subscriptions')
        .insert({
            user_id: userId,
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
            plan_expira_em: expiresAt,
            updated_at: new Date()
        })
        .eq('id', userId)

    if (profileError) {
        console.error('[SubscriptionService] Failed to update profile:', profileError)
        // Non-fatal, as subscription table is the source of truth for dashboard
    }

    return { success: true, expiresAt }
}
