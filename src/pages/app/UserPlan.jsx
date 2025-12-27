import { useAuth } from '@/contexts/AuthContext'
import { Link } from 'react-router-dom'
import { CreditCard, CheckCircle, AlertTriangle, Calendar, Star } from 'lucide-react'

export default function UserPlan() {
    const { profile } = useAuth()

    const getPlanName = (slug) => {
        const names = {
            'monthly': 'Plano Mensal',
            'quarterly': 'Plano Trimestral',
            'annual': 'Plano Anual',
            'lifetime': 'Vitalício'
        }
        return names[slug] || 'Gratuito'
    }

    const planName = getPlanName(profile?.plan_atual)
    const isActive = profile?.subscription_active || (profile?.trial_active && new Date(profile?.trial_expires_at) > new Date())
    const expiresAt = profile?.plan_expira_em ? new Date(profile.plan_expira_em).toLocaleDateString() : '---'

    return (
        <div className="container mx-auto px-4 py-8">
            <h1 className="text-3xl font-black text-white mb-6">Meu Plano</h1>

            <div className="bg-gradient-to-br from-[#1a1a1a] to-black border border-white/10 rounded-2xl p-8 max-w-3xl shadow-xl relative overflow-hidden">
                {/* Background Decoration */}
                <div className="absolute top-0 right-0 p-8 opacity-5 pointer-events-none">
                    <Star className="w-64 h-64 text-white" />
                </div>

                <div className="relative z-10">
                    <div className="flex flex-col md:flex-row md:items-center justify-between gap-6 mb-8">
                        <div>
                            <p className="text-gray-400 text-sm mb-1 uppercase tracking-wider font-bold">Plano Atual</p>
                            <h2 className="text-4xl font-black text-white">{planName}</h2>
                        </div>
                        <div className={`inline-flex items-center gap-2 px-4 py-2 rounded-full font-bold border ${isActive
                                ? 'bg-green-500/10 text-green-400 border-green-500/20'
                                : 'bg-red-500/10 text-red-400 border-red-500/20'
                            }`}>
                            {isActive ? <CheckCircle className="w-5 h-5" /> : <AlertTriangle className="w-5 h-5" />}
                            {isActive ? 'ATIVO' : 'EXPIRADO / INATIVO'}
                        </div>
                    </div>

                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mb-8">
                        <div className="bg-white/5 rounded-xl p-4 border border-white/5">
                            <div className="flex items-center gap-3 mb-2 text-gray-400">
                                <Calendar className="w-4 h-4" />
                                <span className="text-sm">Validade do acesso</span>
                            </div>
                            <p className="text-xl font-bold text-white">
                                {profile?.plan_atual === 'lifetime' ? 'Acesso Vitalício' : expiresAt}
                            </p>
                        </div>
                        <div className="bg-white/5 rounded-xl p-4 border border-white/5">
                            <div className="flex items-center gap-3 mb-2 text-gray-400">
                                <CreditCard className="w-4 h-4" />
                                <span className="text-sm">Pagamento</span>
                            </div>
                            <p className="text-xl font-bold text-white">
                                {profile?.plan_atual === 'free' ? 'Sem Custo' : 'Pré-pago'}
                            </p>
                        </div>
                    </div>

                    <div className="flex flex-col sm:flex-row gap-4">
                        {!isActive || profile?.plan_atual === 'free' ? (
                            <Link
                                to="/vendas#planos"
                                className="flex-1 bg-primary hover:bg-primary/90 text-white text-center py-4 rounded-xl font-bold text-lg transition-transform hover:scale-[1.02] shadow-lg shadow-primary/20"
                            >
                                Fazer Upgrade Agora
                            </Link>
                        ) : (
                            <Link
                                to="/vendas#planos"
                                className="flex-1 bg-white/10 hover:bg-white/20 text-white text-center py-4 rounded-xl font-bold transition-colors border border-white/10"
                            >
                                Ver Outros Planos
                            </Link>
                        )}

                        <a
                            href="https://wa.me/55000000000"
                            target="_blank"
                            className="px-6 py-4 rounded-xl font-bold text-gray-400 hover:text-white hover:bg-white/5 transition-colors text-center"
                        >
                            Suporte
                        </a>
                    </div>
                </div>
            </div>
        </div>
    )
}
