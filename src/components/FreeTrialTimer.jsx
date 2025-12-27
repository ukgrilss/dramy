import { useFreeTrial } from '@/contexts/FreeTrialContext'
import { Clock, X } from 'lucide-react'
import { Link } from 'react-router-dom'

export default function FreeTrialTimer() {
    const { trialActive, timeRemaining, formatTime, endTrial } = useFreeTrial()

    if (!trialActive) return null

    const isLowTime = timeRemaining <= 60
    const percentage = (timeRemaining / 300) * 100

    return (
        <div className="fixed top-20 right-4 z-50 bg-black/95 backdrop-blur-xl border border-primary/50 rounded-xl p-4 shadow-2xl shadow-primary/20 max-w-sm">
            <div className="flex items-start justify-between mb-3">
                <div className="flex items-center gap-2">
                    <Clock className={`w-5 h-5 ${isLowTime ? 'text-red-400 animate-pulse' : 'text-primary'}`} />
                    <span className="font-bold text-white">Teste Gratuito</span>
                </div>
                <button
                    onClick={endTrial}
                    className="p-1 hover:bg-white/10 rounded transition-colors"
                    title="Fechar"
                >
                    <X className="w-4 h-4 text-gray-400" />
                </button>
            </div>

            <div className="mb-3">
                <div className="text-3xl font-black text-center mb-2">
                    <span className={isLowTime ? 'text-red-400' : 'text-primary'}>
                        {formatTime(timeRemaining)}
                    </span>
                </div>
                <div className="w-full bg-white/10 rounded-full h-2 overflow-hidden">
                    <div
                        className={`h-full transition-all duration-1000 ${isLowTime ? 'bg-red-500' : 'bg-primary'
                            }`}
                        style={{ width: `${percentage}%` }}
                    />
                </div>
            </div>

            {isLowTime && (
                <div className="bg-red-500/20 border border-red-500/50 rounded-lg p-3 mb-3">
                    <p className="text-sm text-red-400 font-bold text-center">
                        ⚠️ Menos de 1 minuto restante!
                    </p>
                </div>
            )}

            <p className="text-xs text-gray-400 text-center mb-3">
                Você está usando seu teste gratuito único
            </p>

            <Link
                to="/vendas#planos"
                className="block w-full bg-primary hover:bg-primary/90 text-white text-center py-2 rounded-lg font-bold text-sm transition-all"
            >
                Assinar Agora
            </Link>
        </div>
    )
}
