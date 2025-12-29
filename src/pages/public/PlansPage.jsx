
import { useState, useEffect } from 'react'
import { Link, useNavigate } from 'react-router-dom'
import { Check, Shield, Play, ArrowLeft, Star, Crown, Zap } from 'lucide-react'
import { useAuth } from '../../contexts/AuthContext'
import PaymentModal from '../../components/PaymentModal'

export default function PlansPage() {
    const [selectedPlan, setSelectedPlan] = useState(null)
    const { user } = useAuth()
    const navigate = useNavigate()

    useEffect(() => {
        // ---------------------------------------------------------
        // 1. RASTREAMENTO CLIENT-SIDE (Visual / Pixel Helper)
        // ---------------------------------------------------------
        let attempts = 0
        const interval = setInterval(() => {
            if (window.utmify) {
                console.log('[Pixel] InitiateCheckout Disparado (Client)')
                window.utmify.track('InitiateCheckout')
                clearInterval(interval)
            } else {
                attempts++
                if (attempts >= 20) clearInterval(interval) // 10 segundos
            }
        }, 500)

        // ---------------------------------------------------------
        // 2. RASTREAMENTO SERVER-SIDE (S2S / UTMify Config)
        // ---------------------------------------------------------
        if (user) {
            fetch('/api/track-event', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    event: 'initiate_checkout',
                    userId: user.id
                })
            }).catch(err => console.error('S2S Error:', err))
        }

        return () => clearInterval(interval)
    }, [user])

    const plans = [
        {
            name: 'Mensal',
            slug: 'monthly',
            price: 'R$ 9,99',
            period: '/mês',
            features: [
                'Acesso ilimitado a todo catálogo',
                'Assista em qualquer dispositivo',
                'Qualidade HD',
                'Cancelamento a qualquer momento'
            ],
            color: 'from-blue-500 to-indigo-600',
            popular: false
        },
        {
            name: 'Trimestral',
            slug: 'quarterly',
            price: 'R$ 27,90',
            period: '/3 meses',
            savings: 'Economia de 7%',
            features: [
                'Tudo do plano Mensal',
                'Multiplas telas simultâneas',
                'Qualidade Full HD',
                'Desconto progressivo'
            ],
            color: 'from-purple-500 to-pink-600',
            popular: true
        },
        {
            name: 'Anual',
            slug: 'annual',
            price: 'R$ 59,90',
            period: '/ano',
            savings: 'Economia de 50%',
            features: [
                '1 Ano de acesso completo',
                'Todos os benefícios Premium',
                'Suporte prioritário',
                'Melhor custo benefício'
            ],
            color: 'from-amber-400 to-orange-600',
            popular: false,
            highlight: true
        },
        {
            name: 'Vitalício',
            slug: 'lifetime',
            price: 'R$ 97,90',
            period: 'único',
            savings: 'OFERTA ÚNICA',
            features: [
                'Acesso para SEMPRE',
                'Pague uma única vez',
                'Badge exclusivo no perfil',
                'Grupo VIP de membros'
            ],
            color: 'from-emerald-400 to-cyan-600',
            popular: false,
            highlight: true,
            superPremium: true
        }
    ]

    const handleSelectPlan = (plan) => {
        if (!user) {
            // Se não estiver logado, redireciona para o cadastro (com o plano na URL para uso futuro)
            navigate(`/register?plan=${plan.slug}`)
            return
        }
        // Se estiver logado, abre o Modal direto
        setSelectedPlan(plan)
    }

    return (
        <div className="min-h-screen bg-background text-white font-sans">
            {/* Payment Modal */}
            {selectedPlan && (
                <PaymentModal
                    plan={selectedPlan}
                    onClose={() => setSelectedPlan(null)}
                />
            )}

            {/* Simple Navbar */}
            <nav className="fixed top-0 z-50 w-full bg-black/90 backdrop-blur-md border-b border-white/10">
                <div className="container mx-auto flex h-16 items-center justify-between px-4">
                    <div className="flex items-center gap-2 text-2xl font-black">
                        <Play className="h-8 w-8 text-primary" />
                        <span className="bg-gradient-to-r from-primary to-purple-400 bg-clip-text text-transparent">
                            Dramy
                        </span>
                    </div>
                    <Link to="/" className="flex items-center gap-2 text-sm font-bold text-gray-400 hover:text-white transition-colors">
                        <ArrowLeft className="w-4 h-4" />
                        Voltar ao Início
                    </Link>
                </div>
            </nav>

            <div className="pt-32 pb-20 px-4">
                <div className="container mx-auto max-w-7xl">
                    <div className="text-center mb-16">
                        <h1 className="text-4xl md:text-5xl font-black mb-6">
                            Planos Flexíveis e Transparentes
                        </h1>
                        <p className="text-xl text-gray-300 max-w-2xl mx-auto">
                            Escolha o melhor plano para você e comece a maratonar agora mesmo.
                        </p>
                    </div>

                    <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
                        {plans.map((plan) => (
                            <div
                                key={plan.name}
                                className={`relative bg-[#1a1a1a] border rounded-2xl p-6 flex flex-col transition-all duration-300 hover:scale-[1.02] ${plan.superPremium
                                    ? 'border-emerald-500/50 shadow-2xl shadow-emerald-500/20'
                                    : plan.highlight
                                        ? 'border-amber-500/50 shadow-2xl shadow-amber-500/20'
                                        : plan.popular
                                            ? 'border-purple-500/50 shadow-xl shadow-purple-500/10'
                                            : 'border-white/10 hover:border-white/20'
                                    }`}
                            >
                                {plan.popular && (
                                    <div className="absolute -top-4 left-1/2 -translate-x-1/2 bg-gradient-to-r from-purple-600 to-pink-600 text-white px-4 py-1 rounded-full text-xs font-bold uppercase tracking-wider shadow-lg">
                                        Mais Escolhido
                                    </div>
                                )}
                                {plan.superPremium && (
                                    <div className="absolute -top-4 left-1/2 -translate-x-1/2 bg-gradient-to-r from-emerald-500 to-cyan-600 text-white px-4 py-1 rounded-full text-xs font-bold uppercase tracking-wider shadow-lg flex items-center gap-1">
                                        <Crown className="w-3 h-3" /> Acesso VIP
                                    </div>
                                )}
                                {plan.highlight && !plan.superPremium && (
                                    <div className="absolute -top-4 left-1/2 -translate-x-1/2 bg-gradient-to-r from-amber-500 to-orange-600 text-white px-4 py-1 rounded-full text-xs font-bold uppercase tracking-wider shadow-lg flex items-center gap-1">
                                        <Star className="w-3 h-3" /> Recomendado
                                    </div>
                                )}

                                <div className="mb-6">
                                    <h3 className="text-2xl font-bold mb-2">{plan.name}</h3>
                                    {plan.savings && (
                                        <p className="text-sm font-bold bg-white/10 text-white inline-block px-2 py-0.5 rounded-md mb-2 border border-white/10">{plan.savings}</p>
                                    )}
                                    <div className="flex items-baseline mt-2">
                                        <span className="text-4xl font-black text-white">{plan.price}</span>
                                        <span className="text-gray-400 text-sm ml-2 font-medium">{plan.period}</span>
                                    </div>
                                </div>

                                <ul className="space-y-4 mb-8 flex-1">
                                    {plan.features.map((feature, index) => (
                                        <li key={index} className="flex items-start gap-3">
                                            <div className={`p-0.5 rounded-full bg-gradient-to-br ${plan.color} mt-0.5`}>
                                                <Check className="w-3 h-3 text-white" />
                                            </div>
                                            <span className="text-sm text-gray-300 leading-tight">{feature}</span>
                                        </li>
                                    ))}
                                </ul>

                                <button
                                    onClick={() => handleSelectPlan(plan)}
                                    className={`w-full py-4 rounded-xl font-bold text-center transition-all shadow-lg active:scale-95 ${plan.superPremium
                                        ? 'bg-gradient-to-r from-emerald-500 to-cyan-600 hover:from-emerald-400 hover:to-cyan-500 text-white shadow-emerald-900/20'
                                        : plan.highlight
                                            ? 'bg-gradient-to-r from-amber-500 to-orange-600 hover:from-amber-400 hover:to-orange-500 text-white shadow-amber-900/20'
                                            : plan.popular
                                                ? 'bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-500 hover:to-pink-500 text-white shadow-purple-900/20'
                                                : 'bg-white/10 hover:bg-white/20 text-white border border-white/10'
                                        }`}
                                >
                                    Assinar Agora
                                </button>
                            </div>
                        ))}
                    </div>

                    {/* Guarantee Badge */}
                    <div className="mt-20 flex justify-center">
                        <div className="bg-gradient-to-br from-[#1a1a1a] to-black border border-white/10 rounded-2xl p-8 max-w-2xl text-center flex flex-col md:flex-row items-center gap-8 relative overflow-hidden group">
                            <div className="absolute inset-0 bg-gradient-to-r from-primary/10 to-purple-500/10 opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>

                            <div className="relative z-10 p-4 bg-white/5 rounded-full border border-white/10">
                                <Shield className="w-16 h-16 text-primary" />
                            </div>
                            <div className="text-left relative z-10">
                                <h3 className="text-2xl font-black text-white mb-2">
                                    Garantia Incondicional de 7 Dias
                                </h3>
                                <p className="text-gray-300">
                                    Teste nossa plataforma sem riscos. Se não gostar, devolvemos 100% do seu dinheiro. Sem perguntas, sem letras miúdas.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <footer className="border-t border-white/10 py-8 text-center text-sm text-gray-500">
                <p>© 2024 Dramy. Todos os direitos reservados.</p>
            </footer>
        </div>
    )
}
