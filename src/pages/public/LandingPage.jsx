import { Link } from 'react-router-dom'
import { Check, Shield, Zap, Play } from 'lucide-react'
import { useAuth } from '@/contexts/AuthContext'
import TrialPromoPopup from '@/components/TrialPromoPopup'

export default function LandingPage() {
    const { user } = useAuth()

    return (
        <div className="min-h-screen bg-[#0a0a0a] text-white font-sans selection:bg-pink-500 selection:text-white">
            <TrialPromoPopup />
            {/* Header / Nav */}
            <nav className="fixed top-0 w-full z-50 bg-[#0a0a0a]/80 backdrop-blur-lg border-b border-white/5">
                <div className="container mx-auto px-4 h-16 flex items-center justify-between">
                    <div className="flex items-center gap-2">
                        <Play className="w-8 h-8 text-pink-500 fill-pink-500" />
                        <span className="text-2xl font-black tracking-tighter bg-gradient-to-r from-pink-500 to-purple-500 bg-clip-text text-transparent">
                            Dramy
                        </span>
                    </div>
                    <div>
                        {user ? (
                            <Link to="/" className="text-sm font-bold text-white/80 hover:text-white transition-colors">
                                Acessar Plataforma
                            </Link>
                        ) : (
                            <Link to="/login" className="text-sm font-bold text-white/80 hover:text-white transition-colors">
                                Entrar
                            </Link>
                        )}
                    </div>
                </div>
            </nav>

            {/* Main Content */}
            <main className="pt-32 pb-20 px-4">
                <div className="container mx-auto max-w-3xl text-center">

                    {/* Headline */}
                    <div className="mb-8 space-y-4 animate-fade-in-up">
                        <div className="inline-block px-4 py-1.5 rounded-full bg-pink-500/10 border border-pink-500/20 text-pink-500 text-sm font-bold mb-4">
                            Liberado Acesso Promocional
                        </div>
                        <h1 className="text-4xl md:text-6xl font-black leading-[1.1] tracking-tight">
                            Assista suas <span className="text-pink-500">Minisséries</span> e <span className="text-purple-500">Doramas</span> Favoritos
                        </h1>
                        <p className="text-lg md:text-xl text-gray-400 max-w-2xl mx-auto">
                            Tenha acesso ilimitado a todo nosso catálogo premium de novelas asiáticas e séries exclusivas.
                        </p>
                    </div>

                    {/* VSL Container - CLEAN IFRAME */}
                    <div className="relative w-full max-w-2xl mx-auto mb-12 group">
                        {/* Glow Effect */}
                        <div className="absolute -inset-1 bg-gradient-to-r from-pink-500 to-purple-600 rounded-2xl blur opacity-20 group-hover:opacity-40 transition duration-1000"></div>

                        <div className="relative bg-black rounded-xl overflow-hidden border border-white/10 shadow-2xl">
                            <div style={{ padding: '181.67% 0 0 0', position: 'relative' }}>
                                <iframe
                                    src="https://fast.wistia.net/embed/iframe/51r3j7nlhl?seo=true&videoFoam=true&autoPlay=false&controlsVisibleOnLoad=true&playsinline=1"
                                    title="Dramy VSL"
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
                                        height: '100%',
                                        backgroundColor: '#000'
                                    }}
                                ></iframe>
                            </div>
                        </div>
                    </div>

                    {/* CTA Section */}
                    <div className="space-y-6">
                        <Link
                            to={user ? "/planos" : "/register?trial=true"}
                            className="group relative inline-flex items-center justify-center bg-pink-500 hover:bg-pink-600 text-white text-xl md:text-2xl font-black py-6 px-12 rounded-full transition-all duration-300 transform hover:scale-105 hover:shadow-[0_0_40px_-10px_rgba(236,72,153,0.5)]"
                        >
                            <span className="relative z-10 flex items-center gap-3">
                                <Play className="fill-white w-6 h-6" />
                                QUERO TESTAR GRÁTIS
                            </span>
                        </Link>

                        {/* Security Badges */}
                        <div className="flex flex-wrap justify-center gap-6 text-xs md:text-sm text-gray-500 font-medium">
                            <div className="flex items-center gap-2">
                                <Shield className="w-4 h-4 text-green-500" />
                                Compra Segura
                            </div>
                            <div className="flex items-center gap-2">
                                <Zap className="w-4 h-4 text-yellow-500" />
                                Acesso Imediato
                            </div>
                            <div className="flex items-center gap-2">
                                <Check className="w-4 h-4 text-blue-500" />
                                Satisfação Garantida
                            </div>
                        </div>
                    </div>
                </div>
            </main>

            {/* Simple Footer */}
            <footer className="py-8 border-t border-white/5 bg-black/20">
                <div className="container mx-auto px-4 text-center">
                    <p className="text-gray-600 text-sm">
                        &copy; 2024 Dramy. Todos os direitos reservados.
                    </p>
                </div>
            </footer>
        </div>
    )
}
