
import { useEffect, useState } from 'react'
import { useAuth } from '@/contexts/AuthContext'
import { Clock } from 'lucide-react'
import { useNavigate } from 'react-router-dom'

export default function TrialTimer() {
    const { profile, user } = useAuth()
    const navigate = useNavigate()
    const [balance, setBalance] = useState(0)

    // Sync with global profile balance
    useEffect(() => {
        if (profile?.trial_balance !== undefined) {
            setBalance(profile.trial_balance)
        }
    }, [profile])

    // Format mm:ss
    const formatTime = (seconds) => {
        const m = Math.floor(seconds / 60)
        const s = seconds % 60
        return `${m}:${s < 10 ? '0' : ''}${s}`
    }

    // Only show if:
    // 1. User is logged in
    // 2. User has TRIAL ACTIVE
    // 3. User does NOT have active subscription
    // 4. Timer is > 0
    if (!user || !profile?.trial_active || profile?.subscription_active) {
        return null
    }

    if (balance <= 0) return null

    return (
        <div className="fixed top-20 right-4 z-50 animate-in fade-in slide-in-from-top-4 duration-500">
            <div className="bg-black/80 backdrop-blur-md border border-green-500/50 px-4 py-2 rounded-full flex items-center gap-3 shadow-lg shadow-green-500/10">
                <div className="w-2 h-2 bg-green-500 rounded-full animate-ping" />
                <span className="text-xs font-bold text-green-400 uppercase tracking-wider hidden sm:block">
                    Banco de Tempo
                </span>
                <div className="h-4 w-px bg-white/20 hidden sm:block" />
                <div className="flex items-center gap-2 font-mono text-white text-lg font-bold min-w-[60px]">
                    <Clock className="w-4 h-4 text-green-400" />
                    {formatTime(balance)}
                </div>
            </div>
        </div>
    )
}
