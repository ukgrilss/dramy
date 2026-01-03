import { useState, useEffect } from 'react'
import { Link } from 'react-router-dom'
import { X, Gift, Clock, Sparkles } from 'lucide-react'
import { useAuth } from '@/contexts/AuthContext'

export default function TrialPromoPopup() {
    const { user } = useAuth()
    const [isVisible, setIsVisible] = useState(false)
    const [closed, setClosed] = useState(false)

    useEffect(() => {
        // Show after 3 seconds if not logged in and hasn't been closed in this session
        if (!user && !closed) {
            const timer = setTimeout(() => setIsVisible(true), 3000)
            return () => clearTimeout(timer)
        }
    }, [user, closed])

    if (!isVisible || user || closed) return null

    return (
        <div className="fixed inset-0 z-[100] flex items-center justify-center p-4 bg-black/80 backdrop-blur-sm animate-fade-in font-sans">
            <div className="relative w-full max-w-sm bg-[#121212] border border-pink-500/30 rounded-3xl p-6 shadow-2xl shadow-pink-900/20 transform animate-scale-up">

                {/* Close Button */}
                <button
                    onClick={() => {
                        setIsVisible(false)
                        setClosed(true)
                    }}
                    className="absolute top-4 right-4 text-gray-400 hover:text-white transition-colors"
                >
                    <X className="w-5 h-5" />
                </button>

                {/* Content */}
                <div className="text-center pt-2">
                    <div className="inline-flex items-center justify-center w-16 h-16 rounded-full bg-pink-500/10 mb-4 ring-1 ring-pink-500/30 shadow-lg shadow-pink-500/10 animate-bounce-slow">
                        <Gift className="w-8 h-8 text-pink-500" />
                    </div>

                    <h2 className="text-2xl font-black text-white mb-2 leading-tight">
                        Ganhe <span className="text-transparent bg-clip-text bg-gradient-to-r from-pink-500 to-purple-500">10 Minutos Grátis</span>!
                    </h2>

                    <p className="text-gray-400 text-sm mb-6">
                        Crie sua conta agora e libere acesso imediato para assistir qualquer dorama ou série.
                    </p>

                    <Link
                        to="/register?trial=true"
                        className="group relative flex items-center justify-center gap-2 w-full bg-gradient-to-r from-pink-600 to-purple-600 hover:from-pink-500 hover:to-purple-500 text-white font-bold py-3.5 rounded-xl transition-all hover:scale-[1.02] shadow-lg shadow-pink-900/30"
                        onClick={() => setIsVisible(false)}
                    >
                        <Sparkles className="w-4 h-4 fill-white animate-pulse" />
                        <span>Resgatar Meus 10 Minutos</span>
                    </Link>

                    <div className="mt-4 flex items-center justify-center gap-2 text-xs text-gray-500">
                        <Clock className="w-3 h-3" />
                        <span>Oferta por tempo limitado</span>
                    </div>
                </div>
            </div>
        </div>
    )
}
