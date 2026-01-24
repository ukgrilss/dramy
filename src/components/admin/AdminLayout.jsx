import { useState, useEffect } from 'react'
import { Outlet, Link, useLocation, Navigate } from 'react-router-dom'
import { LayoutDashboard, Users, Film, List, LogOut, Search, CreditCard, MessageSquare, BarChart3, Menu, X, Webhook, Settings } from 'lucide-react'
import { useAuth } from '../../contexts/AuthContext'

const AdminLayout = () => {
    const { logout, userRole, loading } = useAuth()
    const location = useLocation()
    const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false)

    // Redirect immediately if not admin (Ghost Mode)
    // We check BOTH !loading AND userRole to ensure we don't redirect while still fetching the user
    if (!loading && userRole !== 'admin') {
        return (
            <div className="min-h-screen bg-black flex flex-col items-center justify-center text-white p-4 text-center">
                <h1 className="text-3xl font-bold text-red-500 mb-4">ACESSO NEGADO 🚫</h1>
                <p className="text-gray-400 mb-2">Você tentou acessar o painel administrativo.</p>
                <div className="bg-red-900/20 border border-red-500/50 p-4 rounded-lg font-mono text-sm mb-6">
                    Seu Cargo (Role): <span className="text-yellow-400 font-bold">{userRole || 'nenhum'}</span>
                </div>
                <Link to="/" className="bg-white text-black px-6 py-2 rounded-full font-bold hover:bg-gray-200 transition-colors">
                    Voltar para Home
                </Link>
            </div>
        )
    }

    // While loading auth state, show NOTHING (or a generic app loader, but user asked for 'invisible')
    // Showing nothing (null) prevents the "flash" of admin content before we know who the user is.
    // While loading auth state, show a Loader instead of nothing
    // While loading auth state, show a Loader instead of nothing
    if (loading) {
        return (
            <div className="min-h-screen bg-[#0f1014] flex items-center justify-center">
                <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-white"></div>
            </div>
        )
    }

    // Navigation items matching the reference site
    const navItems = [
        { path: '/admin/dashboard', icon: LayoutDashboard, label: 'Dashboard' },
        { path: '/admin/analytics', icon: BarChart3, label: 'Analytics' },
        { path: '/admin/conteudo', icon: Film, label: 'Conteúdo' },
        { path: '/admin/usuarios', icon: Users, label: 'Usuários' },
        { path: '/admin/sugestoes', icon: MessageSquare, label: 'Sugestões' },
        { path: '/admin/assinaturas', icon: CreditCard, label: 'Assinaturas' },
        { path: '/admin/banners', icon: LayoutDashboard, label: 'Banners' },
        { path: '/admin/configuracoes', icon: Settings, label: 'Configurações' },
    ]

    return (
        <div className="min-h-screen bg-[#0f1014] text-gray-100 flex flex-col font-sans">
            {/* Top Header - Sticky */}
            <header className="sticky top-0 z-40 bg-[#0f1014]/90 backdrop-blur-md border-b border-white/5 h-16 w-full px-4 md:px-6 flex items-center justify-between">
                <div className="flex items-center gap-4 md:gap-12">
                    <Link to="/" className="flex items-center gap-2 group">
                        <div className="w-8 h-8 rounded-lg bg-gradient-to-br from-primary via-purple-500 to-pink-500 flex items-center justify-center font-bold text-white text-lg shadow-lg shadow-primary/20 group-hover:scale-105 transition-transform">
                            C
                        </div>
                        <span className="font-bold text-xl tracking-tight text-white hidden md:block">
                            Dramy <span className="text-primary text-[10px] uppercase bg-primary/10 px-1.5 py-0.5 rounded ml-1 border border-primary/20 align-top">Admin</span>
                        </span>
                    </Link>

                    {/* Search Bar (Hidden on mobile) */}
                    <div className="relative hidden md:block group">
                        <Search className="w-4 h-4 absolute left-3 top-1/2 -translate-y-1/2 text-gray-500 group-focus-within:text-primary transition-colors" />
                        <input
                            type="text"
                            placeholder="Buscar séries ou usuários..."
                            className="bg-white/5 border border-white/10 rounded-full pl-10 pr-4 py-1.5 text-sm text-gray-300 focus:outline-none focus:border-primary/50 focus:bg-white/10 w-64 transition-all"
                        />
                    </div>
                </div>

                <div className="flex items-center gap-3 md:gap-4">
                    <button onClick={logout} className="p-2 hover:bg-white/5 rounded-full text-gray-400 hover:text-white transition-colors" title="Sair">
                        <LogOut className="w-5 h-5" />
                    </button>

                    <button
                        className="md:hidden p-2 text-gray-300"
                        onClick={() => setIsMobileMenuOpen(!isMobileMenuOpen)}
                    >
                        {isMobileMenuOpen ? <X /> : <Menu />}
                    </button>

                    <div className="w-8 h-8 rounded-full bg-gradient-to-br from-gray-700 to-gray-900 border border-white/10 hidden md:block ring-2 ring-transparent hover:ring-primary/50 transition-all cursor-pointer" />
                </div>
            </header>

            {/* Mobile Navigation Menu */}
            {isMobileMenuOpen && (
                <div className="md:hidden bg-[#1a1d24] border-b border-white/10 p-4 space-y-2">
                    {navItems.map((item) => {
                        const Icon = item.icon
                        const isActive = location.pathname === item.path
                        return (
                            <Link
                                key={item.path}
                                to={item.path}
                                onClick={() => setIsMobileMenuOpen(false)}
                                className={`flex items-center gap-3 px-4 py-3 rounded-lg ${isActive ? 'bg-primary/10 text-primary' : 'text-gray-400'}`}
                            >
                                <Icon className="w-5 h-5" />
                                {item.label}
                            </Link>
                        )
                    })}
                </div>
            )}

            {/* Page Content & Tabs */}
            <div className="flex-1 flex flex-col max-w-7xl mx-auto w-full px-4 md:px-6 pt-6 md:pt-8">
                {/* Title Section */}
                <div className="mb-6 md:mb-8">
                    <h1 className="text-2xl md:text-3xl font-bold bg-clip-text text-transparent bg-gradient-to-r from-white via-gray-200 to-gray-400">
                        Painel Administrativo
                    </h1>
                    <p className="text-gray-500 mt-1 text-sm md:text-base">
                        Gerencie seu conteúdo, usuários e assinaturas em um só lugar.
                    </p>
                </div>

                {/* Horizontal Navigation Tabs (Desktop) */}
                <nav className="hidden md:flex items-center gap-1 border-b border-white/10 mb-8 overflow-x-auto pb-0 scrollbar-hide">
                    {navItems.map((item) => {
                        const Icon = item.icon
                        const isActive = location.pathname === item.path

                        return (
                            <Link
                                key={item.path}
                                to={item.path}
                                className={`
                                    flex items-center gap-2 px-4 py-3 border-b-2 transition-all text-sm font-medium whitespace-nowrap
                                    ${isActive
                                        ? 'border-primary text-primary'
                                        : 'border-transparent text-gray-400 hover:text-white hover:border-white/20'}
                                `}
                            >
                                <Icon className="w-4 h-4" />
                                {item.label}
                            </Link>
                        )
                    })}
                </nav>

                {/* Main View */}
                <main className="flex-1 pb-10 animate-fade-in">
                    <Outlet />
                </main>
            </div>
        </div>
    )
}

export default AdminLayout
