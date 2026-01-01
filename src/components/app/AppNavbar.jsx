import { Link, useNavigate, useLocation } from 'react-router-dom'
import { useAuth } from '@/contexts/AuthContext'
import { Clapperboard, Home, Film, Tv, User, CreditCard, LogOut, Settings, Menu, X, Search } from 'lucide-react'
import { useState, useEffect } from 'react'

export default function AppNavbar() {
    const { user, signOut } = useAuth()
    const location = useLocation()
    const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false)
    const [isMobileSearchOpen, setIsMobileSearchOpen] = useState(false) // SEARCH MOBILE
    const [searchTerm, setSearchTerm] = useState('')
    const [isScrolled, setIsScrolled] = useState(false)
    const [scrollY, setScrollY] = useState(0)
    const navigate = useNavigate()

    useEffect(() => {
        const handleScroll = () => {
            const currentScroll = window.scrollY
            setIsScrolled(currentScroll > 10)
            setScrollY(currentScroll)
        }
        window.addEventListener('scroll', handleScroll, { passive: true })
        return () => window.removeEventListener('scroll', handleScroll)
    }, [])

    const handleSignOut = async () => {
        await signOut()
        navigate('/login')
    }

    const handleSearch = (e) => {
        e.preventDefault()
        if (searchTerm.trim()) {
            navigate(`/conteudos?q=${searchTerm}`)
        }
    }

    const navItems = [
        { path: '/', icon: Home, label: 'Início' },
        { path: '/conteudos', icon: Film, label: 'Explorar' },
        { path: '/minha-lista', icon: Tv, label: 'Minha Lista' },
    ]

    const isActive = (path) => {
        if (path === '/' && location.pathname === '/') return true
        if (path !== '/' && location.pathname.startsWith(path)) return true
        return false
    }

    return (
        <nav
            className={`fixed top-0 z-50 w-full transition-all duration-500 overflow-hidden ${isScrolled
                ? 'bg-black/80 backdrop-blur-xl shadow-lg shadow-black/20'
                : 'bg-black/20 backdrop-blur-sm'
                }`}
            style={{
                transform: `translateY(${Math.min(scrollY * 0.05, 2)}px)`,
                transition: 'transform 0.1s ease-out'
            }}
        >
            {/* Animated gradient overlay - breathing effect */}
            <div
                className="absolute inset-0 opacity-30 pointer-events-none"
                style={{
                    background: 'linear-gradient(135deg, rgba(150,18,131,0.03) 0%, transparent 50%, rgba(150,18,131,0.03) 100%)',
                    backgroundSize: '200% 200%',
                    animation: 'gradientBreath 8s ease-in-out infinite'
                }}
            />

            {/* Dynamic bottom border */}
            <div
                className="absolute bottom-0 left-0 w-full h-px transition-all duration-700"
                style={{
                    background: isScrolled
                        ? 'linear-gradient(90deg, transparent 0%, rgba(255,255,255,0.1) 50%, transparent 100%)'
                        : 'linear-gradient(90deg, transparent 0%, rgba(255,255,255,0.05) 50%, transparent 100%)',
                    backgroundSize: '200% 100%',
                    backgroundPosition: `${(scrollY % 100)}% 0`,
                    opacity: isScrolled ? 1 : 0.5
                }}
            />
            <div className="container mx-auto flex h-16 items-center justify-between px-4 md:px-8 relative">
                {/* Logo */}
                <Link to="/" className="flex items-center gap-2 text-2xl font-black text-white mr-8">
                    <Clapperboard className="h-8 w-8 text-primary" />
                    <span className="text-xl font-bold bg-gradient-to-r from-primary to-purple-400 bg-clip-text text-transparent hidden sm:block">
                        Dramy
                    </span>
                </Link>

                {/* Desktop Navigation */}
                <div className="hidden md:flex items-center gap-6 mr-auto">
                    {navItems.map((item) => {
                        const Icon = item.icon
                        return (
                            <Link
                                key={item.path}
                                to={item.path}
                                className={`flex items-center gap-2 text-sm font-bold transition-colors group ${isActive(item.path)
                                    ? 'text-primary'
                                    : 'text-gray-300 hover:text-white'
                                    }`}
                            >
                                <Icon className="w-4 h-4 transition-all duration-300 ease-out group-hover:scale-105 group-hover:drop-shadow-[0_0_6px_rgba(220,38,38,0.4)]" />
                                {item.label}
                            </Link>
                        )
                    })}
                </div>

                {/* Search Bar (Desktop) */}
                <div className="hidden md:flex items-center mr-4">
                    <form onSubmit={handleSearch} className="relative group">
                        <input
                            type="text"
                            placeholder="Buscar filmes, séries..."
                            value={searchTerm}
                            onChange={(e) => setSearchTerm(e.target.value)}
                            className="bg-black/50 border border-white/10 rounded-full py-2 pl-4 pr-10 text-sm text-white focus:outline-none focus:border-primary/50 focus:w-64 w-48 transition-all duration-300 placeholder:text-gray-500"
                        />
                        <button
                            type="submit"
                            className="absolute right-0 top-0 h-full px-3 text-gray-400 hover:text-white transition-colors"
                        >
                            <Search className="w-4 h-4" />
                        </button>
                    </form>
                </div>

                {/* Desktop User Menu */}
                <div className="hidden md:flex items-center gap-4">
                    {user ? (
                        <>
                            <Link
                                to="/perfil"
                                className="flex items-center gap-2 text-sm text-gray-300 hover:text-white transition-colors group"
                            >
                                <User className="w-4 h-4 transition-all duration-300 ease-out group-hover:scale-105 group-hover:drop-shadow-[0_0_4px_rgba(220,38,38,0.3)]" />
                                Perfil
                            </Link>

                            <Link
                                to="/plano"
                                className="flex items-center gap-2 text-sm text-gray-300 hover:text-white transition-colors group"
                            >
                                <CreditCard className="w-4 h-4 transition-all duration-300 ease-out group-hover:scale-105 group-hover:drop-shadow-[0_0_4px_rgba(220,38,38,0.3)]" />
                                Plano
                            </Link>

                            {/* Admin Link (if admin) */}
                            {user?.user_metadata?.role === 'admin' && (
                                <Link
                                    to="/admin"
                                    className="flex items-center gap-2 bg-primary/20 hover:bg-primary/30 text-primary px-4 py-2 rounded-lg transition-all border border-primary/30 group"
                                >
                                    <Settings className="w-4 h-4 transition-all duration-300 group-hover:rotate-90" />
                                    Admin
                                </Link>
                            )}

                            <button
                                onClick={handleSignOut}
                                className="flex items-center gap-2 bg-white/10 hover:bg-white/20 text-white px-4 py-2 rounded-lg transition-all group"
                            >
                                <LogOut className="w-4 h-4 transition-all duration-300 group-hover:scale-110 group-hover:text-red-400" />
                                Sair
                            </button>
                        </>
                    ) : (
                        <div className="flex items-center gap-4">
                            <Link
                                to="/register?trial=true"
                                className="text-gray-300 hover:text-white font-semibold transition-colors"
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

                {/* Mobile Search & Menu Actions - HIDDEN (Replaced by Bottom Nav) */}
                <div className="hidden">
                    <button
                        onClick={() => setIsMobileSearchOpen(!isMobileSearchOpen)}
                        className="text-white hover:text-primary transition-colors"
                    >
                        {isMobileSearchOpen ? <X className="h-6 w-6" /> : <Search className="h-6 w-6" />}
                    </button>

                    <button
                        onClick={() => setIsMobileMenuOpen(!isMobileMenuOpen)}
                        className="text-white hover:text-primary transition-colors"
                    >
                        {isMobileMenuOpen ? <X className="h-6 w-6" /> : <Menu className="h-6 w-6" />}
                    </button>
                </div>
            </div >

            {/* Mobile Search Bar (Expandable) */}
            {
                isMobileSearchOpen && (
                    <div className="md:hidden bg-black/95 backdrop-blur-xl border-b border-white/10 p-4 animate-in slide-in-from-top-2">
                        <form
                            action="."
                            onSubmit={(e) => {
                                e.preventDefault()
                                if (searchTerm.trim()) {
                                    navigate(`/conteudos?q=${searchTerm}`)
                                    setIsMobileSearchOpen(false)
                                    document.activeElement?.blur()
                                }
                            }}
                            className="relative flex items-center"
                        >
                            <input
                                type="search"
                                name="q"
                                inputMode="search"
                                placeholder="O que você quer assistir?"
                                value={searchTerm}
                                onChange={(e) => setSearchTerm(e.target.value)}
                                autoFocus
                                className="w-full bg-white/10 border border-white/10 rounded-lg py-3 pl-12 pr-12 text-white placeholder:text-gray-400 focus:outline-none focus:border-primary focus:bg-white/20"
                            />

                            {/* Search Icon (Submit Trigger) */}
                            <button
                                type="submit"
                                className="absolute left-0 top-0 h-full w-12 flex items-center justify-center text-gray-400 group-focus-within:text-primary transition-colors"
                            >
                                <Search className="w-5 h-5" />
                            </button>

                            {/* Close/Clear Button */}
                            {searchTerm && (
                                <button
                                    type="button"
                                    onClick={() => setSearchTerm('')}
                                    className="absolute right-0 top-0 h-full w-12 flex items-center justify-center text-gray-400 hover:text-white"
                                >
                                    <X className="w-5 h-5" />
                                </button>
                            )}
                        </form>
                    </div>
                )
            }

            {/* Mobile Menu */}
            {
                isMobileMenuOpen && (
                    <div className="md:hidden bg-black/95 backdrop-blur-xl border-t border-white/10 p-4 space-y-2">
                        {navItems
                            .filter(item => item.path !== '/conteudos') // REMOVE "Explorar" from Mobile
                            .map((item) => {
                                const Icon = item.icon
                                return (
                                    <Link
                                        key={item.path}
                                        to={item.path}
                                        onClick={() => setIsMobileMenuOpen(false)}
                                        className={`flex items-center gap-3 p-3 rounded-lg transition-all ${isActive(item.path)
                                            ? 'bg-primary text-white'
                                            : 'text-gray-300 hover:bg-white/5'
                                            }`}
                                    >
                                        <Icon className="w-5 h-5" />
                                        {item.label}
                                    </Link>
                                )
                            })}

                        <div className="h-px bg-white/10 my-2"></div>

                        <Link
                            to="/perfil"
                            onClick={() => setIsMobileMenuOpen(false)}
                            className="flex items-center gap-3 p-3 rounded-lg text-gray-300 hover:bg-white/5"
                        >
                            <User className="w-5 h-5" />
                            Perfil
                        </Link>

                        <Link
                            to="/plano"
                            onClick={() => setIsMobileMenuOpen(false)}
                            className="flex items-center gap-3 p-3 rounded-lg text-gray-300 hover:bg-white/5"
                        >
                            <CreditCard className="w-5 h-5" />
                            Plano
                        </Link>

                        {user?.user_metadata?.role === 'admin' && (
                            <Link
                                to="/admin"
                                onClick={() => setIsMobileMenuOpen(false)}
                                className="flex items-center gap-3 p-3 rounded-lg bg-primary/20 text-primary"
                            >
                                <Settings className="w-5 h-5" />
                                Painel Admin
                            </Link>
                        )}

                        <button
                            onClick={() => {
                                setIsMobileMenuOpen(false)
                                handleSignOut()
                            }}
                            className="w-full flex items-center gap-3 p-3 rounded-lg bg-white/10 text-white hover:bg-white/20"
                        >
                            <LogOut className="w-5 h-5" />
                            Sair
                        </button>
                    </div>
                )
            }
        </nav >
    )
}
