import { useState, useEffect } from 'react'
import { Link, useNavigate, useLocation } from 'react-router-dom'
import { Clapperboard, Search, Menu, X, User, LogOut, Settings, CreditCard, ChevronRight, Play } from 'lucide-react'
import { useAuth } from '@/contexts/AuthContext'
import TrialTimer from './TrialTimer'

export default function Navbar() {
    const [isScrolled, setIsScrolled] = useState(false)
    const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false)
    const { user, userRole, signOut } = useAuth()
    const navigate = useNavigate()
    const location = useLocation()

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
        setIsMobileMenuOpen(false)
    }

    const isActive = (path) => location.pathname === path

    return (
        <>
            <nav className={`fixed top-0 z-50 w-full transition-all duration-300 ${isScrolled ? 'bg-black/80 backdrop-blur-xl border-b border-white/5' : 'bg-gradient-to-b from-black/80 to-transparent'}`}>
                <div className="container mx-auto flex h-20 items-center justify-between px-4 md:px-8">
                    {/* Logo */}
                    <Link to="/" className="flex items-center gap-2 group">
                        <div className="relative">
                            <div className="absolute -inset-2 bg-pink-500/20 rounded-full blur-md opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
                            <Clapperboard className="h-8 w-8 text-primary relative z-10" />
                        </div>
                        <span className="text-2xl font-black tracking-tight bg-gradient-to-r from-white to-gray-400 bg-clip-text text-transparent group-hover:from-primary group-hover:to-purple-400 transition-all duration-300">
                            Dramy
                        </span>
                    </Link>

                    {/* Desktop Navigation */}
                    <div className="hidden md:flex items-center gap-8">
                        <Link to="/" className={`text-sm font-bold transition-colors ${isActive('/') ? 'text-white' : 'text-gray-400 hover:text-white'}`}>Início</Link>
                        {user && (
                            <>
                                <Link to="/perfil" className={`text-sm font-bold transition-colors ${isActive('/perfil') ? 'text-white' : 'text-gray-400 hover:text-white'}`}>Minha Lista</Link>
                                <TrialTimer />
                            </>
                        )}
                    </div>

                    {/* Actions & Profile (Desktop) */}
                    <div className="hidden md:flex items-center gap-6">
                        <button className="text-gray-300 hover:text-white transition-colors">
                            <Search className="h-5 w-5" />
                        </button>

                        {user ? (
                            <div className="flex items-center gap-4 pl-6 border-l border-white/10">
                                <div className="text-right hidden lg:block">
                                    <p className="text-xs text-gray-400">Logado como</p>
                                    <p className="text-sm font-bold text-white truncate max-w-[150px]">{user.user_metadata?.name || 'Assinante'}</p>
                                </div>
                                <div className="relative group">
                                    <Link to="/perfil">
                                        <div className="w-10 h-10 rounded-full bg-gradient-to-br from-gray-800 to-gray-900 border border-white/10 flex items-center justify-center overflow-hidden hover:border-primary/50 transition-colors">
                                            <User className="h-5 w-5 text-gray-400 group-hover:text-white" />
                                        </div>
                                    </Link>
                                    {/* Dropdown could go here */}
                                </div>
                                <button
                                    onClick={handleSignOut}
                                    className="p-2 text-gray-400 hover:text-red-400 transition-colors"
                                    title="Sair"
                                >
                                    <LogOut className="w-5 h-5" />
                                </button>
                            </div>
                        ) : (
                            <Link
                                to="/login"
                                className="bg-white/10 hover:bg-white/20 text-white px-6 py-2.5 rounded-full font-bold text-sm transition-all hover:scale-105 border border-white/10"
                            >
                                Entrar
                            </Link>
                        )}
                    </div>

                </div>
            </nav>

        </>
    )
}

// Helper Component for Sidebar Links
function DrawerLink({ to, icon: Icon, label, onClick, active, highlight }) {
    return (
        <Link
            to={to}
            onClick={onClick}
            className={`flex items-center justify-between p-4 rounded-xl transition-all group ${active
                ? 'bg-white/10 text-white border border-white/10'
                : highlight
                    ? 'bg-primary/10 text-primary border border-primary/20'
                    : 'text-gray-400 hover:text-white hover:bg-white/5'
                }`}
        >
            <div className="flex items-center gap-3">
                <Icon className={`w-5 h-5 ${active ? 'text-primary' : highlight ? 'text-primary' : 'text-gray-500 group-hover:text-white'}`} />
                <span className="font-medium">{label}</span>
            </div>
            <ChevronRight className={`w-4 h-4 text-gray-600 group-hover:text-white ${active ? 'text-white' : ''}`} />
        </Link>
    )
}
