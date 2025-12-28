import { createContext, useContext, useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'

const AuthContext = createContext({})

export const useAuth = () => {
    const context = useContext(AuthContext)
    if (!context) {
        throw new Error('useAuth must be used within AuthProvider')
    }
    return context
}

export const AuthProvider = ({ children }) => {
    const [user, setUser] = useState(null)
    const [userRole, setUserRole] = useState(null)
    const [profile, setProfile] = useState(null) // NEW: Store full profile
    const [loading, setLoading] = useState(true)

    useEffect(() => {
        // Check active session
        supabase.auth.getSession().then(async ({ data: { session } }) => {
            setUser(session?.user ?? null)
            if (session?.user) {
                const data = await fetchUserRole(session.user.id)
                if (data) setProfile(data)
            }
            setLoading(false)
        })

        // Listen for auth changes
        const { data: { subscription } } = supabase.auth.onAuthStateChange((_event, session) => {
            setUser(session?.user ?? null)
            if (session?.user) {
                fetchUserRole(session.user.id).then(data => {
                    if (data) setProfile(data)
                })
            } else {
                setUserRole(null)
            }
        })

        return () => subscription.unsubscribe()
    }, [])

    const fetchUserRole = async (userId) => {
        try {
            // First try to get from user metadata
            const { data: { user: currentUser } } = await supabase.auth.getUser()

            let metadataRole = null
            if (currentUser?.user_metadata?.role) {
                metadataRole = currentUser.user_metadata.role
                setUserRole(metadataRole)
                localStorage.setItem('userRole', metadataRole)
            }

            // ALWAYS fetch SECURE RPC to get subscription status (profile data)
            // We cannot rely only on metadata because we need 'subscription_active'
            const { data, error } = await supabase
                .rpc('get_my_profile_secure')

            if (!error && data) {
                // RPC returning SETOF profiles returns an array.
                const profileData = Array.isArray(data) ? data[0] : data

                // If RPC returns role, it overrides metadata or confirms it
                if (profileData?.role) {
                    setUserRole(profileData.role)
                    localStorage.setItem('userRole', profileData.role)
                }

                // Expose profile data to context
                return profileData
            } else {
                console.warn('RPC fetch failed, trying direct table fallback...', error)

                // Backup: Direct table access (if RPC is not set up)
                const { data: directData, error: directError } = await supabase
                    .from('profiles')
                    .select('*')
                    .eq('id', userId)
                    .maybeSingle()

                if (!directError && directData) {
                    setUserRole(directData.role)
                    return directData
                }
            }

            // If we reached here, DB fetch failed but maybe we have metadata role
            if (metadataRole) {
                return { role: metadataRole, id: userId } // Return minimal profile
            }

            // Last fallback: check localStorage
            const savedRole = localStorage.getItem('userRole')
            if (savedRole) {
                setUserRole(savedRole)
            }
        } catch (error) {
            console.error('Error fetching user role:', error)
            // Fallback to localStorage
            const savedRole = localStorage.getItem('userRole')
            if (savedRole) {
                setUserRole(savedRole)
            }
        }
    }

    const signUp = async (email, password, name) => {
        const { data, error } = await supabase.auth.signUp({
            email,
            password,
            options: {
                data: {
                    name: name
                }
            }
        })
        if (error) throw error
        return data
    }

    const signIn = async (email, password) => {
        const { data, error } = await supabase.auth.signInWithPassword({
            email,
            password
        })
        if (error) throw error
        if (data.user) {
            await fetchUserRole(data.user.id)
        }
        return data
    }

    const signOut = async () => {
        const { error } = await supabase.auth.signOut()
        if (error) throw error
        setUserRole(null)
        localStorage.removeItem('userRole')
    }

    // NEW: Consume Trial Time
    const decrementTrial = async (seconds) => {
        try {
            // Optimistic update
            if (profile?.trial_balance) {
                setProfile(prev => ({
                    ...prev,
                    trial_balance: Math.max(0, prev.trial_balance - seconds)
                }))
            }

            const { data, error } = await supabase.rpc('consume_trial_time', { p_seconds: seconds })

            if (error) throw error

            // Sync with server response
            if (data !== null) {
                setProfile(prev => ({
                    ...prev,
                    trial_balance: data
                }))
                return data
            }
        } catch (err) {
            console.error('Error consuming trial time:', err)
        }
    }

    const refreshProfile = async () => {
        if (!user) return

        try {
            // ⚡ FORCE REFRESH: Bypass RPCs/Metadata and hit the table directly
            const { data, error } = await supabase
                .from('profiles')
                .select('*')
                .eq('id', user.id)
                .single()

            if (!error && data) {
                // Ensure field types are correct
                if (data.subscription_active === true) {
                    console.log("⚡ FORCE PROFILE UPDATE: ACTIVE")
                }

                // Force State Update
                setProfile(prev => ({ ...prev, ...data }))

                // Force Role Update
                if (data.role) {
                    setUserRole(data.role)
                    localStorage.setItem('userRole', data.role)
                }

                return data
            }
        } catch (err) {
            console.error("Force refresh failed:", err)
        }
    }

    const value = {
        user,
        userRole,
        profile, // Export profile
        loading,
        signUp,
        signIn,
        signOut,
        decrementTrial,
        refreshProfile // NEW: Allow manual refresh
    }

    return (
        <AuthContext.Provider value={value}>
            {children}
        </AuthContext.Provider>
    )
}
