import { useState, useEffect } from 'react'
import { Link, useNavigate } from 'react-router-dom'
import { Clapperboard, Search, Menu, X, User, LogOut, Settings, CreditCard } from 'lucide-react'
import { useAuth } from '@/contexts/AuthContext'
import TrialTimer from './TrialTimer'

export default function Navbar() {
    const [isScrolled, setIsScrolled] = useState(false)
    const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false)
    const { user, userRole, signOut } = useAuth()
    const navigate = useNavigate()

    // Temporary fix: Explicitly allow admin emails
    const isAdmin = userRole === 'admin' || user?.email === 'admin@cinefy.com' || user?.email === 'admin@dramy.com'

    useEffect(() => {
        const handleScroll = () => {
            setIsScrolled(window.scrollY > 0)
        }
        window.addEventListener('scroll', handleScroll)
        return () => window.removeEventListener('scroll', handleScroll)
    }, [])

    const handleSignOut = async () => {
        await signOut()
        navigate('/')
    }

    return (
        <nav className={`fixed top-0 z-50 w-full transition-all duration-300 ${isScrolled ? 'bg-black/90 backdrop-blur-md border-b border-white/5' : 'bg-transparent'}`}>
            <div className="container mx-auto flex h-16 items-center justify-between px-4 md:px-8">
                {/* Logo */}
                <Link to="/" className="flex items-center gap-2 text-2xl font-black tracking-tight text-white hover:text-primary transition-colors">
                    <Clapperboard className="h-8 w-8 text-primary" />
                    <span className="text-xl font-bold bg-gradient-to-r from-primary to-purple-400 bg-clip-text text-transparent">
                        Dramy
                    </span>
                </Link>

                {/* Trial Timer */}
                <TrialTimer />

                {/* Desktop Navigation */}
                <div className="hidden md:flex items-center gap-8">
                    <Link to="/" className="text-sm font-bold text-gray-300 hover:text-white transition-colors">Início</Link>

                    {/* Auth Buttons */}
                    {user ? (
                        <div className="flex items-center gap-4">
                            <span className="text-sm text-gray-400">Olá, {user.user_metadata?.name || user.email}</span>

                            {/* Added Profile/Plan Links for Desktop too, just in case */}
                            <Link to="/perfil" className="text-sm font-bold text-gray-300 hover:text-white transition-colors">Perfil</Link>
                            <Link to="/plano" className="text-sm font-bold text-gray-300 hover:text-white transition-colors">Plano</Link>


                            {/* Admin Panel Link - Only for admins */}
                            {isAdmin && (
                                <Link
                                    to="/admin"
                                    className="flex items-center gap-2 bg-primary/20 hover:bg-primary/30 text-primary px-4 py-2 rounded-lg transition-all border border-primary/30"
                                >
                                    <Settings className="w-4 h-4" />
                                    Admin
                                </Link>
                            )}

                            <button
                                onClick={handleSignOut}
                                className="flex items-center gap-2 bg-white/10 hover:bg-white/20 text-white px-4 py-2 rounded-lg transition-all border border-white/10"
                            >
                                <LogOut className="w-4 h-4" />
                                Sair
                            </button>
                        </div>
                    ) : (
                        <Link
                            to="/login"
                            className="flex items-center gap-2 bg-primary hover:bg-primary/90 text-white px-6 py-2 rounded-lg font-bold transition-all transform hover:scale-105"
                        >
                            <User className="w-4 h-4" />
                            Entrar
                        </Link>
                    )}
                </div>

                {/* Actions */}
                <div className="hidden md:flex items-center gap-4">
                    <button className="p-2 text-gray-300 hover:text-white rounded-full hover:bg-white/10 transition-all">
                        <Search className="h-5 w-5" />
                    </button>
                </div>

                {/* Mobile Menu Button */}
                <button
                    onClick={() => setIsMobileMenuOpen(!isMobileMenuOpen)}
                    className="md:hidden p-2 text-white hover:text-primary transition-colors"
                >
                    {isMobileMenuOpen ? <X className="h-6 w-6" /> : <Menu className="h-6 w-6" />}
                </button>
            </div>

            {/* Mobile Menu Overlay */}
            {isMobileMenuOpen && (
                <div className="fixed top-16 left-0 right-0 bottom-0 bg-black/95 backdrop-blur-xl border-t border-white/10 p-4 flex flex-col gap-4 md:hidden overflow-y-auto animate-in fade-in slide-in-from-top-4">
                    <Link to="/" className="block p-3 rounded-lg hover:bg-white/5 text-gray-200 font-bold" onClick={() => setIsMobileMenuOpen(false)}>Início</Link>

                    {user ? (
                        <>
                            {/* User Info */}
                            <div className="p-3 bg-white/5 rounded-lg">
                                <p className="text-sm text-gray-400">Logado como:</p>
                                <p className="text-white font-medium truncate">{user.user_metadata?.name || user.email}</p>
                            </div>

                            <Link
                                to="/"
                                className="flex items-center gap-3 p-3 rounded-lg bg-white/5 text-white hover:bg-white/10"
                                onClick={() => setIsMobileMenuOpen(false)}
                            >
                                <Clapperboard className="w-5 h-5 text-primary" />
                                Acessar Plataforma
                            </Link>

                            <Link
                                to="/perfil"
                                className="flex items-center gap-3 p-3 rounded-lg text-gray-300 hover:bg-white/5"
                                onClick={() => setIsMobileMenuOpen(false)}
                            >
                                <User className="w-5 h-5" />
                                Minha Conta
                            </Link>

                            <Link
                                to="/plano"
                                className="flex items-center gap-3 p-3 rounded-lg text-gray-300 hover:bg-white/5"
                                onClick={() => setIsMobileMenuOpen(false)}
                            >
                                <CreditCard className="w-5 h-5" />
                                Meu Plano
                            </Link>

                            <div className="h-px bg-white/10 my-2"></div>

                            {/* Admin Button - Only for admins */}
                            {isAdmin && (
                                <Link
                                    to="/admin"
                                    className="flex items-center justify-center gap-2 w-full p-3 rounded-lg bg-primary/20 border border-primary/50 text-primary font-bold hover:bg-primary hover:text-white transition-all"
                                    onClick={() => setIsMobileMenuOpen(false)}
                                >
                                    <Settings className="w-5 h-5" />
                                    Painel Admin
                                </Link>
                            )}

                            {/* Logout Button */}
                            <button
                                onClick={() => {
                                    setIsMobileMenuOpen(false)
                                    handleSignOut()
                                }}
                                className="flex items-center justify-center gap-2 w-full p-3 rounded-lg bg-white/10 text-white font-bold hover:bg-white/20 transition-all"
                            >
                                <LogOut className="h-4 w-4" /> Sair
                            </button>
                        </>
                    ) : (
                        <>
                            <div className="h-px bg-white/10 my-2"></div>
                            <Link
                                to="/login"
                                className="flex items-center justify-center gap-2 w-full p-3 rounded-lg bg-primary text-white font-bold"
                                onClick={() => setIsMobileMenuOpen(false)}
                            >
                                <User className="h-4 w-4" /> Entrar
                            </Link>
                        </>
                    )}
                </div>
            )
            }
        </nav >
    )
}
