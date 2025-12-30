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

function App() {
    useContentProtection() // 🛡️ ATIVA BLOQUEIO DE CÓPIA/DOWNLOAD

    return (
        <AuthProvider>
            <TrialTimer />
            <Routes>
                {/* ========================================
                    ÁREA PÚBLICA (Marketing/Vendas)
                ======================================== */}

                <Route path="/vendas" element={<LandingPage />} />
                <Route path="/planos" element={<PlansPage />} />
                <Route path="/watch/:id" element={<Watch />} />

                {/* ========================================
                    AUTENTICAÇÃO
                ======================================== */}
                <Route path="/login" element={<Login />} />
                <Route path="/register" element={<Register />} />

                {/* ========================================
                    APP (Área Logada - Plataforma)
                    Rotas movidas para a raiz '/' dentro do AppLayout
                ======================================== */}
                <Route path="/" element={<AppLayout />}>
                    <Route index element={<AppHome />} />
                    <Route path="title/:id" element={<TitleDetails />} />
                    <Route path="conteudos" element={<ContentList />} />
                    <Route path="conteudos/filmes" element={<MoviesList />} />
                    <Route path="conteudos/series" element={<SeriesList />} />
                    <Route path="conteudos/:id" element={<ContentDetail />} />
                    <Route path="minha-lista" element={<MyList />} />
                    <Route path="perfil" element={<Profile />} />
                    <Route path="plano" element={<UserPlan />} />
                </Route>

                {/* ========================================
                    ADMIN (Painel Administrativo)
                ======================================== */}
                <Route path="/admin" element={<AdminLayout />}>
                    <Route index element={<Dashboard />} />
                    <Route path="analytics" element={<Analytics />} />
                    {/* Map "series" to ContentManagement for now, or rename ContentManagement */}
                    <Route path="series" element={<ContentManagement />} />
                    {/* <Route path="categories" element={<CategoryManagement />} /> */}
                    <Route path="users" element={<UserManagement />} />
                    <Route path="integrations" element={<Integrations />} />
                    <Route path="suggestions" element={<Suggestions />} />
                    {/* Map "plans" to SubscriptionManagement */}
                    <Route path="plans" element={<SubscriptionManagement />} />

                    {/* Keep legacy routes just in case, or alias them */}
                    <Route path="content" element={<ContentManagement />} />
                    <Route path="subscriptions" element={<SubscriptionManagement />} />
                    <Route path="banners" element={<BannerManagement />} />
                    <Route path="settings" element={<Settings />} />
                </Route>

                {/* Fallback */}
                <Route path="*" element={<Navigate to="/" replace />} />
            </Routes>
            <Toaster position="top-right" richColors />
        </AuthProvider >
    )
}

export default App
