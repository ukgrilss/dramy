import { supabase } from '@/lib/supabase'
import { generateFingerprint, getUserAgent } from './fingerprint'

/**
 * Create a temporary trial user and authenticate
 */
export const createTrialUser = async () => {
    try {
        // Generate unique email for trial user
        const timestamp = Date.now()
        const randomHash = Math.random().toString(36).substring(7)
        const email = `trial+${timestamp}${randomHash}@dramy.local`
        const password = Math.random().toString(36).substring(2) + Math.random().toString(36).substring(2)

        // Create user in Supabase Auth
        const { data: authData, error: authError } = await supabase.auth.signUp({
            email,
            password,
            options: {
                emailRedirectTo: window.location.origin,
                data: {
                    is_trial: true,
                    trial_started_at: new Date().toISOString()
                }
            }
        })

        if (authError) {
            console.error('Auth error:', authError)
            throw authError
        }
        if (!authData.user) {
            console.error('No user returned from signUp')
            throw new Error('Failed to create user')
        }



        return {
            success: true,
            user: authData.user,
            session: authData.session
        }
    } catch (error) {
        console.error('Error creating trial user:', error)
        return {
            success: false,
            error: error.message
        }
    }
}

/**
 * Start free trial - Complete flow
 */
export const startFreeTrial = async () => {
    try {


        // 1. Generate fingerprint
        const fingerprint = await generateFingerprint()
        const userAgent = getUserAgent()
        const ip = 'client-ip' // TODO: Get from backend

        // 2. Check if trial already used

        const { data: alreadyUsed, error: checkError } = await supabase
            .rpc('check_trial_used', {
                p_ip_address: ip,
                p_fingerprint: fingerprint
            })

        if (checkError) {
            console.error('Error checking trial:', checkError)
            throw checkError
        }



        if (alreadyUsed) {
            return {
                success: false,
                message: 'O teste grátis já foi utilizado neste dispositivo. Assine para continuar.'
            }
        }

        // 3. Create trial user

        const userResult = await createTrialUser()
        if (!userResult.success) {
            console.error('Failed to create user:', userResult.error)
            return {
                success: false,
                message: 'Erro ao criar usuário de teste: ' + userResult.error
            }
        }



        // 4. Register trial access
        // 4. Register trial access
        const { data: trialData, error: trialError } = await supabase
            .rpc('register_trial_access_v2', {
                p_ip_address: ip,
                p_fingerprint: fingerprint,
                p_user_agent: userAgent,
                p_user_id: userResult.user.id
            })

        if (trialError) {
            console.error('Error registering trial:', trialError)
            throw trialError
        }



        if (!trialData.success) {
            return {
                success: false,
                message: trialData.message
            }
        }

        // 5. Return success with trial info
        // 5. Return success with trial info
        return {
            success: true,
            user: userResult.user,
            session: userResult.session,
            expiresAt: trialData.expires_at,
            durationSeconds: trialData.duration_seconds
        }
    } catch (error) {
        console.error('❌ Error starting free trial:', error)
        return {
            success: false,
            message: 'Erro ao iniciar teste gratuito: ' + error.message
        }
    }
}

/**
 * Check if current user's trial is still valid
 */
export const checkTrialValid = async (user) => {
    if (!user) return false

    try {
        const { data, error } = await supabase
            .from('profiles')
            .select('trial_active, trial_expires_at')
            .eq('id', user.id)
            .single()

        if (error) throw error

        if (!data.trial_active) return false

        const expiresAt = new Date(data.trial_expires_at)
        const now = new Date()

        return expiresAt > now
    } catch (error) {
        console.error('Error checking trial:', error)
        return false
    }
}

/**
 * End trial (called when time expires)
 */
export const endTrial = async (userId) => {
    try {
        const { error } = await supabase
            .from('profiles')
            .update({
                trial_active: false
            })
            .eq('id', userId)

        if (error) throw error

        return { success: true }
    } catch (error) {
        console.error('Error ending trial:', error)
        return { success: false }
    }
}
