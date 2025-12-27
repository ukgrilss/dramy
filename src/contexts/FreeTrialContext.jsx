import { createContext, useContext, useState, useEffect } from 'react'
import { supabase } from '@/lib/supabase'
import { generateFingerprint, getUserAgent, checkTrialUsed, registerFreeTrial } from '@/lib/fingerprint'

const FreeTrialContext = createContext()

export const useFreeTrialProvider = () => {
    const context = useContext(FreeTrialContext)
    if (!context) {
        throw new Error('useFreeTrial must be used within FreeTrialProvider')
    }
    return context
}

export const FreeTrialProvider = ({ children }) => {
    const [trialActive, setTrialActive] = useState(false)
    const [trialUsed, setTrialUsed] = useState(false)
    const [timeRemaining, setTimeRemaining] = useState(0)
    const [expiresAt, setExpiresAt] = useState(null)
    const [loading, setLoading] = useState(true)
    const [fingerprint, setFingerprint] = useState(null)

    // Initialize fingerprint on mount
    useEffect(() => {
        initializeFingerprint()
    }, [])

    const initializeFingerprint = async () => {
        try {
            const fp = await generateFingerprint()
            setFingerprint(fp)

            // Check if trial was already used
            const ip = 'client-ip' // In production, get from backend
            const used = await checkTrialUsed(supabase, fp, ip)
            setTrialUsed(used)

            // Check localStorage for active trial
            const savedTrial = localStorage.getItem('dramy_trial')
            if (savedTrial) {
                const trial = JSON.parse(savedTrial)
                const expires = new Date(trial.expires_at)

                if (expires > new Date()) {
                    setTrialActive(true)
                    setExpiresAt(expires)
                } else {
                    localStorage.removeItem('dramy_trial')
                }
            }
        } catch (error) {
            console.error('Error initializing fingerprint:', error)
        } finally {
            setLoading(false)
        }
    }

    // Timer countdown
    useEffect(() => {
        if (!trialActive || !expiresAt) return

        const interval = setInterval(() => {
            const now = new Date()
            const remaining = Math.max(0, Math.floor((expiresAt - now) / 1000))

            setTimeRemaining(remaining)

            if (remaining === 0) {
                endTrial()
            }
        }, 1000)

        return () => clearInterval(interval)
    }, [trialActive, expiresAt])

    const startTrial = async () => {
        if (trialUsed || !fingerprint) {
            return {
                success: false,
                message: 'Você já utilizou seu teste gratuito'
            }
        }

        try {
            const ip = 'client-ip' // In production, get from backend
            const userAgent = getUserAgent()

            const result = await registerFreeTrial(supabase, fingerprint, ip, userAgent)

            if (result.success) {
                const expires = new Date(result.expires_at)
                setTrialActive(true)
                setTrialUsed(true)
                setExpiresAt(expires)
                setTimeRemaining(result.duration_seconds)

                // Save to localStorage
                localStorage.setItem('dramy_trial', JSON.stringify({
                    trial_id: result.trial_id,
                    expires_at: result.expires_at,
                    started_at: new Date().toISOString()
                }))

                return { success: true }
            } else {
                setTrialUsed(true)
                return {
                    success: false,
                    message: result.message || 'Não foi possível iniciar o teste'
                }
            }
        } catch (error) {
            console.error('Error starting trial:', error)
            return {
                success: false,
                message: 'Erro ao iniciar teste gratuito'
            }
        }
    }

    const endTrial = () => {
        setTrialActive(false)
        setTimeRemaining(0)
        localStorage.removeItem('dramy_trial')
    }

    const formatTime = (seconds) => {
        const mins = Math.floor(seconds / 60)
        const secs = seconds % 60
        return `${mins}:${secs.toString().padStart(2, '0')}`
    }

    const value = {
        trialActive,
        trialUsed,
        timeRemaining,
        loading,
        startTrial,
        endTrial,
        formatTime,
        canStartTrial: !trialUsed && !loading
    }

    return (
        <FreeTrialContext.Provider value={value}>
            {children}
        </FreeTrialContext.Provider>
    )
}

export const useFreeTrial = useFreeTrialProvider
