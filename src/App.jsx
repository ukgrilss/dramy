import { Routes, Route, Navigate } from 'react-router-dom'
import { Toaster } from 'sonner'
import { AuthProvider } from './contexts/AuthContext'
import TrialTimer from './components/TrialTimer'

// Public Pages
import Home from './pages/Home'
import LandingPage from './pages/public/LandingPage'
import PlansPage from './pages/public/PlansPage'
import Watch from './pages/Watch'

// Auth Pages
import Login from './pages/Login'
import Register from './pages/Register'

// App Pages (Logged In Area)
import AppLayout from './components/app/AppLayout'
import AppHome from './pages/app/AppHome'
import ContentList from './pages/app/ContentList'
import MoviesList from './pages/app/MoviesList'
import SeriesList from './pages/app/SeriesList'
import ContentDetail from './pages/app/ContentDetail'
import Profile from './pages/app/Profile'
import UserPlan from './pages/app/UserPlan'
import TitleDetails from './pages/app/TitleDetails'
import MyList from './pages/app/MyList'

// Admin Pages
import AdminLayout from './components/admin/AdminLayout'
import Dashboard from './pages/admin/Dashboard'
import ContentManagement from './pages/admin/ContentManagement'
import UserManagement from './pages/admin/UserManagement'
import SubscriptionManagement from './pages/admin/SubscriptionManagement'
import BannerManagement from './pages/admin/BannerManagement'
import CategoryManagement from './pages/admin/CategoryManagement'
import Settings from './pages/admin/Settings'
import Analytics from './pages/admin/Analytics'
import Suggestions from './pages/admin/Suggestions'
import Integrations from './pages/admin/Integrations'

import { useContentProtection } from './hooks/useContentProtection'

import MobileBottomNav from './components/MobileBottomNav'

function App() {
    useContentProtection() // 🛡️ ATIVA BLOQUEIO DE CÓPIA/DOWNLOAD

    return (
        <AuthProvider>
            <TrialTimer />
            <Routes>
                {/* ========================================
                    ÁREA PÚBLICA & AUTH
                ======================================== */}
                <Route path="/login" element={<Login />} />
                <Route path="/register" element={<Register />} />
                <Route path="/vendas" element={<LandingPage />} />
                <Route path="/planos" element={<PlansPage />} />

                {/* Watch Player (Direct Access) */}
                <Route path="/watch/:id" element={<Watch />} />

                {/* ========================================
                    APP (Área Logada - Plataforma)
                    Rotas movidas para a raiz '/' dentro do AppLayout
                ======================================== */}
                <Route path="/" element={<AppLayout />}>
                    <Route index element={<AppHome />} />
                    <Route path="filmes" element={<MoviesList />} />
                    <Route path="series" element={<SeriesList />} />
                    <Route path="conteudos" element={<ContentList />} />

                    <Route path="title/:id" element={<TitleDetails />} />

                    {/* Mapeamento conforme MobileBottomNav */}
                    {/* "Minha Lista" aponta para /perfil */}
                    <Route path="perfil" element={<MyList />} />
                    {/* "Conta" aponta para /plano */}
                    <Route path="plano" element={<UserPlan />} />

                    <Route path="conta" element={<Profile />} />
                </Route>

                {/* ========================================
                    ÁREA ADMINISTRATIVA
                ======================================== */}
                <Route path="/admin" element={<AdminLayout />}>
                    <Route index element={<Navigate to="/admin/dashboard" replace />} />
                    <Route path="dashboard" element={<Dashboard />} />
                    <Route path="conteudo" element={<ContentManagement />} />
                    <Route path="usuarios" element={<UserManagement />} />
                    <Route path="assinaturas" element={<SubscriptionManagement />} />
                    <Route path="banners" element={<BannerManagement />} />
                    <Route path="categorias" element={<CategoryManagement />} />
                    <Route path="configuracoes" element={<Settings />} />
                    <Route path="analytics" element={<Analytics />} />
                    <Route path="sugestoes" element={<Suggestions />} />
                    <Route path="integracoes" element={<Integrations />} />
                </Route>

                {/* Fallback */}
                <Route path="*" element={<Navigate to="/" replace />} />
            </Routes>
            <MobileBottomNav />
            <Toaster position="top-right" richColors />
        </AuthProvider >
    )
}

export default App
