import { Link, useNavigate, useLocation } from 'react-router-dom'
import { useAuth } from '@/contexts/AuthContext'
import { Clapperboard, Home, Film, Tv, User, CreditCard, LogOut, Settings, Menu, X, Search } from 'lucide-react'
import { useState } from 'react'

export default function AppNavbar() {
    const { user, signOut } = useAuth()
    const navigate = useNavigate()
    const location = useLocation()
    const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false)
    const [searchTerm, setSearchTerm] = useState('')

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
        { path: '/conteudos', icon: Film, label: 'Explorar' }, // Updated link to point to catalog
        { path: '/minha-lista', icon: Tv, label: 'Minha Lista' },
    ]

    const isActive = (path) => {
        if (path === '/' && location.pathname === '/') return true
        if (path !== '/' && location.pathname.startsWith(path)) return true
        return false
    }

    return (
        <nav className="fixed top-0 z-50 w-full bg-black/90 backdrop-blur-md border-b border-white/10">
            <div className="container mx-auto flex h-16 items-center justify-between px-4 md:px-8">
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
                                className={`flex items-center gap-2 text-sm font-bold transition-colors ${isActive(item.path)
                                    ? 'text-primary'
                                    : 'text-gray-300 hover:text-white'
                                    }`}
                            >
                                <Icon className="w-4 h-4" />
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
                                className="flex items-center gap-2 text-sm text-gray-300 hover:text-white transition-colors"
                            >
                                <User className="w-4 h-4" />
                                Perfil
                            </Link>

                            <Link
                                to="/plano"
                                className="flex items-center gap-2 text-sm text-gray-300 hover:text-white transition-colors"
                            >
                                <CreditCard className="w-4 h-4" />
                                Plano
                            </Link>

                            {/* Admin Link (if admin) */}
                            {user?.user_metadata?.role === 'admin' && (
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
                                className="flex items-center gap-2 bg-white/10 hover:bg-white/20 text-white px-4 py-2 rounded-lg transition-all"
                            >
                                <LogOut className="w-4 h-4" />
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

                {/* Mobile Menu Button */}
                <button
                    onClick={() => setIsMobileMenuOpen(!isMobileMenuOpen)}
                    className="md:hidden p-2 text-white hover:text-primary transition-colors"
                >
                    {isMobileMenuOpen ? <X className="h-6 w-6" /> : <Menu className="h-6 w-6" />}
                </button>
            </div>

            {/* Mobile Menu */}
            {isMobileMenuOpen && (
                <div className="md:hidden bg-black/95 backdrop-blur-xl border-t border-white/10 p-4 space-y-2">
                    {navItems.map((item) => {
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
            )}
        </nav>
    )
}
