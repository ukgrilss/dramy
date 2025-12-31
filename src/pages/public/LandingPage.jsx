import { useState, useEffect } from 'react'
import { Link, useNavigate } from 'react-router-dom'
import { Play, Check, Star, Tv, Smartphone, Tablet, Monitor, Zap, Shield, Clock, Users } from 'lucide-react'

import { useAuth } from '@/contexts/AuthContext'

export default function LandingPage() {
    const navigate = useNavigate()
    const { user, loading } = useAuth()

    const [activeUsers, setActiveUsers] = useState(120)

    // Simula oscilação de usuários ativos
    useEffect(() => {
        const interval = setInterval(() => {
            setActiveUsers(prev => {
                // Variação aleatória entre -5 e +8
                const change = Math.floor(Math.random() * 14) - 5
                let newValue = prev + change

                // Mantém entre 110 e 180 para parecer realista
                if (newValue < 110) newValue = 115
                if (newValue > 180) newValue = 175

                return newValue
            })
        }, 3000) // Atualiza a cada 3 segundos

        return () => clearInterval(interval)
    }, [])

    const handleStartTrial = () => {
        // Redirect to registration with trial flag
        navigate('/register?trial=true')
    }

    const plans = [
        {
            name: 'Mensal',
            price: 'R$ 9,99',
            period: '/mês',
            checkoutUrl: '/register?trial=true&plan=monthly',
            features: [
                'Acesso ilimitado a todo catálogo',
                'Assista em qualquer dispositivo',
                'Qualidade HD',
                'Sem anúncios',
                'Cancele quando quiser'
            ],
            popular: false
        },
        {
            name: 'Trimestral',
            price: 'R$ 27,90',
            period: 'a cada 3 meses',
            savings: 'Economize 7%',
            checkoutUrl: '/register?trial=true&plan=quarterly',
            features: [
                'Acesso ilimitado a todo catálogo',
                'Assista em até 3 dispositivos simultâneos',
                'Qualidade HD e Full HD',
                'Sem anúncios',
                'Suporte prioritário',
                'Cancele quando quiser'
            ],
            popular: true
        },
        {
            name: 'Anual',
            price: 'R$ 59,90',
            period: '/ano',
            savings: 'Economize 50%',
            checkoutUrl: '/register?trial=true&plan=annual',
            features: [
                'Acesso ilimitado a todo catálogo',
                'Assista em até 3 dispositivos simultâneos',
                'Qualidade HD e Full HD',
                'Sem anúncios',
                'Suporte prioritário',
                'Cancele quando quiser'
            ],
            popular: false
        },
        {
            name: 'Vitalício',
            price: 'R$ 97,90',
            period: 'pagamento único',
            savings: 'OFERTA ÚNICA',
            checkoutUrl: '/register?trial=true&plan=lifetime',
            features: [
                'Acesso VITALÍCIO - Pague 1x e assista para sempre',
                'Assista em até 5 dispositivos simultâneos',
                'Qualidade 4K quando disponível',
                'Sem anúncios',
                'Suporte VIP prioritário',
                'Acesso antecipado a novos conteúdos',
                'Garantia de 7 dias - Risco zero'
            ],
            popular: false,
            highlight: true
        }
    ]

    const testimonials = [
        {
            name: 'Maria Silva',
            rating: 5,
            text: 'Melhor plataforma de streaming que já usei! Catálogo incrível e preço justo.'
        },
        {
            name: 'João Santos',
            rating: 5,
            text: 'Vale muito a pena! Assisto em qualquer lugar e a qualidade é excelente.'
        },
        {
            name: 'Ana Costa',
            rating: 5,
            text: 'Cancelei Netflix e não me arrependo. Dramy tem tudo que eu preciso!'
        }
    ]

    return (
        <div className="min-h-screen bg-background text-white">
            {/* Simple Navbar */}
            <nav className="fixed top-0 z-50 w-full bg-black/90 backdrop-blur-md border-b border-white/10">
                <div className="container mx-auto flex h-16 items-center justify-between px-4">
                    <div className="flex items-center gap-2 text-2xl font-black">
                        <Play className="h-8 w-8 text-primary" />
                        <span className="bg-gradient-to-r from-primary to-purple-400 bg-clip-text text-transparent">
                            Dramy
                        </span>
                    </div>
                    {loading ? (
                        // Loading State (Skeleton or Empty)
                        <div className="w-32 h-10 bg-white/10 rounded-lg animate-pulse" />
                    ) : user ? (
                        <Link
                            to="/"
                            className="bg-primary hover:bg-primary/90 text-white px-6 py-2 rounded-lg font-bold transition-all shadow-lg shadow-primary/20"
                        >
                            Acessar Plataforma
                        </Link>
                    ) : (
                        <div className="flex items-center gap-4">
                            <Link
                                to="/register?trial=true"
                                className="text-gray-300 hover:text-white font-semibold transition-colors hidden md:block"
                            >
                                Teste Grátis
                            </Link>
                            <Link
                                to="/login"
                                className="bg-primary hover:bg-primary/90 text-white px-6 py-2 rounded-lg font-bold transition-all"
                            >
                                Entrar
                            </Link>
                        </div>
                    )}
                </div>
            </nav>

            {/* Hero Section with VSL - VIP Style */}
            <section className="pt-32 pb-20 px-4 bg-gradient-to-b from-purple-900/20 to-background">
                <div className="container mx-auto max-w-4xl">
                    <div className="text-center space-y-8">
                        {/* Main Headline */}
                        <div className="space-y-4">
                            <h1 className="text-4xl md:text-5xl lg:text-6xl font-black leading-tight">
                                <span className="text-pink-500">Liberado agora: Assinatura VIP</span>
                            </h1>
                            <h2 className="text-3xl md:text-4xl lg:text-5xl font-bold text-white">
                                para Fãs de Minisséries e Doramas!
                            </h2>
                        </div>

                        {/* Subheadline */}
                        <p className="text-xl md:text-2xl text-gray-300">
                            Tenha acesso a todos os episódios das melhores apps por apenas R$ 10
                        </p>

                        {/* VSL Video - Centered */}
                        <div className="relative max-w-md mx-auto">
                            <div className="rounded-2xl overflow-hidden shadow-2xl shadow-pink-500/30 border-2 border-pink-500/50">
                                <div style={{ padding: '181.67% 0 0 0', position: 'relative' }}>
                                    <iframe
                                        src="https://fast.wistia.net/embed/iframe/51r3j7nlhl?controlsVisibleOnLoad=true&playerColor=ec4899&playsinline=true"
                                        title="Dramy Video"
                                        allow="autoplay; fullscreen"
                                        allowTransparency="true"
                                        frameBorder="0"
                                        scrolling="no"
                                        className="wistia_embed"
                                        name="wistia_embed"
                                        allowFullScreen
                                        width="100%"
                                        height="100%"
                                        style={{
                                            position: 'absolute',
                                            top: 0,
                                            left: 0,
                                            width: '100%',
                                            height: '100%'
                                        }}
                                    ></iframe>
                                </div>
                            </div>
                            {/* Social Proof Badge */}
                            <div className="absolute -top-3 -left-3 bg-pink-500 text-white px-4 py-2 rounded-full text-sm font-bold shadow-lg flex items-center gap-2 animate-bounce">
                                <span className="w-2 h-2 bg-green-400 rounded-full animate-pulse"></span>
                                👥 {activeUsers} assinando
                            </div>
                        </div>

                        {/* CTA Button */}
                        <div className="pt-4">
                            {user ? (
                                <Link
                                    to="/planos"
                                    className="inline-block bg-pink-500 hover:bg-pink-600 text-white text-xl md:text-2xl font-bold px-12 py-5 rounded-full transition-all transform hover:scale-105 shadow-2xl shadow-pink-500/50"
                                >
                                    Quero Meu Acesso
                                </Link>
                            ) : (
                                <a
                                    href="#planos"
                                    className="inline-block bg-pink-500 hover:bg-pink-600 text-white text-xl md:text-2xl font-bold px-12 py-5 rounded-full transition-all transform hover:scale-105 shadow-2xl shadow-pink-500/50"
                                >
                                    Quero Meu Acesso
                                </a>
                            )}
                        </div>

                        {/* Trust Indicators */}
                        <div className="flex flex-wrap justify-center gap-6 text-sm text-gray-400 pt-4">
                            <div className="flex items-center gap-2">
                                <Shield className="w-4 h-4 text-pink-500" />
                                <span>Pagamento Seguro</span>
                            </div>
                            <div className="flex items-center gap-2">
                                <Clock className="w-4 h-4 text-pink-500" />
                                <span>Acesso Imediato</span>
                            </div>
                            <div className="flex items-center gap-2">
                                <Check className="w-4 h-4 text-pink-500" />
                                <span>Garantia de 7 Dias</span>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            {/* Benefits */}
            <section className="py-20 px-4 bg-white/5">
                <div className="container mx-auto">
                    <div className="grid grid-cols-1 md:grid-cols-4 gap-8">
                        <div className="text-center">
                            <div className="w-16 h-16 bg-primary/20 rounded-full flex items-center justify-center mx-auto mb-4">
                                <Zap className="w-8 h-8 text-primary" />
                            </div>
                            <h3 className="font-bold text-lg mb-2">Acesso Ilimitado</h3>
                            <p className="text-gray-400 text-sm">Assista quantos filmes e séries quiser</p>
                        </div>
                        <div className="text-center">
                            <div className="w-16 h-16 bg-primary/20 rounded-full flex items-center justify-center mx-auto mb-4">
                                <Shield className="w-8 h-8 text-primary" />
                            </div>
                            <h3 className="font-bold text-lg mb-2">Sem Anúncios</h3>
                            <p className="text-gray-400 text-sm">Experiência sem interrupções</p>
                        </div>
                        <div className="text-center">
                            <div className="w-16 h-16 bg-primary/20 rounded-full flex items-center justify-center mx-auto mb-4">
                                <Clock className="w-8 h-8 text-primary" />
                            </div>
                            <h3 className="font-bold text-lg mb-2">Disponível 24/7</h3>
                            <p className="text-gray-400 text-sm">Assista quando e onde quiser</p>
                        </div>
                        <div className="text-center">
                            <div className="w-16 h-16 bg-primary/20 rounded-full flex items-center justify-center mx-auto mb-4">
                                <Users className="w-8 h-8 text-primary" />
                            </div>
                            <h3 className="font-bold text-lg mb-2">Múltiplos Dispositivos</h3>
                            <p className="text-gray-400 text-sm">Até 3 telas simultâneas</p>
                        </div>
                    </div>
                </div>
            </section>

            {/* Why Choose */}
            <section className="py-20 px-4">
                <div className="container mx-auto max-w-6xl">
                    <h2 className="text-4xl md:text-5xl font-black text-center mb-16">
                        Por que escolher a <span className="text-primary">Dramy</span>?
                    </h2>
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
                        <div className="bg-card border border-white/10 rounded-xl p-8">
                            <div className="w-12 h-12 bg-primary/20 rounded-lg flex items-center justify-center mb-4">
                                <Play className="w-6 h-6 text-primary" />
                            </div>
                            <h3 className="text-2xl font-bold mb-3">Catálogo Gigante</h3>
                            <p className="text-gray-400">
                                Mais de 10.000 títulos entre filmes, séries, documentários e muito mais. Sempre com novidades toda semana.
                            </p>
                        </div>
                        <div className="bg-card border border-white/10 rounded-xl p-8">
                            <div className="w-12 h-12 bg-primary/20 rounded-lg flex items-center justify-center mb-4">
                                <Star className="w-6 h-6 text-primary" />
                            </div>
                            <h3 className="text-2xl font-bold mb-3">Qualidade Premium</h3>
                            <p className="text-gray-400">
                                Assista em HD, Full HD e até 4K (plano vitalício). Áudio e imagem de cinema na sua casa.
                            </p>
                        </div>
                        <div className="bg-card border border-white/10 rounded-xl p-8">
                            <div className="w-12 h-12 bg-primary/20 rounded-lg flex items-center justify-center mb-4">
                                <Shield className="w-6 h-6 text-primary" />
                            </div>
                            <h3 className="text-2xl font-bold mb-3">Seguro e Confiável</h3>
                            <p className="text-gray-400">
                                Plataforma 100% segura com pagamento protegido. Seus dados estão sempre seguros conosco.
                            </p>
                        </div>
                        <div className="bg-card border border-white/10 rounded-xl p-8">
                            <div className="w-12 h-12 bg-primary/20 rounded-lg flex items-center justify-center mb-4">
                                <Zap className="w-6 h-6 text-primary" />
                            </div>
                            <h3 className="text-2xl font-bold mb-3">Sem Complicação</h3>
                            <p className="text-gray-400">
                                Cancele quando quiser, sem burocracia. Não gostou? Devolvemos seu dinheiro em até 7 dias.
                            </p>
                        </div>
                    </div>
                </div>
            </section>







            {/* Final CTA - TESTE GRÁTIS */}
            <section id="planos" className="py-20 px-4">
                <div className="container mx-auto max-w-4xl text-center">
                    <h2 className="text-4xl md:text-6xl font-black mb-6">
                        Pronto para começar?
                    </h2>
                    <p className="text-xl text-gray-300 mb-8">
                        Junte-se a milhares de pessoas que já estão assistindo
                    </p>
                    <Link
                        to="/register?trial=true"
                        className="inline-block bg-pink-500 hover:bg-pink-600 text-white px-16 py-6 rounded-full font-black text-2xl transition-all transform hover:scale-105 shadow-2xl shadow-pink-500/50"
                    >
                        TESTE GRÁTIS
                    </Link>
                    <p className="text-sm text-gray-500 mt-6">
                        Cancele quando quiser • Garantia de 7 dias
                    </p>
                </div>
            </section>

            {/* Footer */}
            <footer className="border-t border-white/10 py-12 px-4">
                <div className="container mx-auto max-w-6xl">
                    <div className="grid grid-cols-1 md:grid-cols-4 gap-8 mb-8">
                        <div>
                            <div className="flex items-center gap-2 text-xl font-black mb-4">
                                <Play className="h-6 w-6 text-primary" />
                                <span className="bg-gradient-to-r from-primary to-purple-400 bg-clip-text text-transparent">
                                    Dramy
                                </span>
                            </div>
                            <p className="text-gray-400 text-sm">
                                Sua plataforma de streaming favorita
                            </p>
                        </div>
                        <div>
                            <h4 className="font-bold mb-4">Empresa</h4>
                            <ul className="space-y-2 text-sm text-gray-400">
                                <li><a href="#" className="hover:text-white transition-colors">Sobre nós</a></li>
                                <li><a href="#" className="hover:text-white transition-colors">Contato</a></li>
                                <li><a href="#" className="hover:text-white transition-colors">Carreiras</a></li>
                            </ul>
                        </div>
                        <div>
                            <h4 className="font-bold mb-4">Suporte</h4>
                            <ul className="space-y-2 text-sm text-gray-400">
                                <li><a href="#" className="hover:text-white transition-colors">Central de Ajuda</a></li>
                                <li><a href="#" className="hover:text-white transition-colors">FAQ</a></li>
                                <li><a href="#" className="hover:text-white transition-colors">Termos de Uso</a></li>
                            </ul>
                        </div>
                        <div>
                            <h4 className="font-bold mb-4">Legal</h4>
                            <ul className="space-y-2 text-sm text-gray-400">
                                <li><a href="#" className="hover:text-white transition-colors">Privacidade</a></li>
                                <li><a href="#" className="hover:text-white transition-colors">Cookies</a></li>
                                <li><a href="#" className="hover:text-white transition-colors">Licenças</a></li>
                            </ul>
                        </div>
                    </div>
                    <div className="border-t border-white/10 pt-8 text-center text-sm text-gray-500">
                        <p>© 2024 Dramy. Todos os direitos reservados.</p>
                    </div>
                </div>
            </footer>
        </div>
    )
}
