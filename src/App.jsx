import { Routes, Route, Navigate } from 'react-router-dom'
import { Toaster } from 'sonner'
import { AuthProvider } from './contexts/AuthContext'
import TrialTimer from './components/TrialTimer'
import { lazy, Suspense } from 'react'

// Loading Component
const PageLoader = () => (
    <div className="min-h-screen bg-[#0f1014] flex items-center justify-center">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary"></div>
    </div>
)

// Public Pages (Lazy)
const Home = lazy(() => import('./pages/Home'))
const LandingPage = lazy(() => import('./pages/public/LandingPage'))
const PlansPage = lazy(() => import('./pages/public/PlansPage'))
const Watch = lazy(() => import('./pages/Watch'))

// Auth Pages (Lazy)
const Login = lazy(() => import('./pages/Login'))
const Register = lazy(() => import('./pages/Register'))
const ForgotPassword = lazy(() => import('./pages/ForgotPassword'))
const UpdatePassword = lazy(() => import('./pages/UpdatePassword'))

// App Pages (Lazy)
const AppLayout = lazy(() => import('./components/app/AppLayout'))
const AppHome = lazy(() => import('./pages/app/AppHome'))
const ContentList = lazy(() => import('./pages/app/ContentList'))
const MoviesList = lazy(() => import('./pages/app/MoviesList'))
const SeriesList = lazy(() => import('./pages/app/SeriesList'))
const TitleDetails = lazy(() => import('./pages/app/TitleDetails'))
const Profile = lazy(() => import('./pages/app/Profile'))
const UserPlan = lazy(() => import('./pages/app/UserPlan'))
const MyList = lazy(() => import('./pages/app/MyList'))

// Admin Pages (Lazy)
const AdminLayout = lazy(() => import('./components/admin/AdminLayout'))
const Dashboard = lazy(() => import('./pages/admin/Dashboard'))
const ContentManagement = lazy(() => import('./pages/admin/ContentManagement'))
const UserManagement = lazy(() => import('./pages/admin/UserManagement'))
const SubscriptionManagement = lazy(() => import('./pages/admin/SubscriptionManagement'))
const BannerManagement = lazy(() => import('./pages/admin/BannerManagement'))
const CategoryManagement = lazy(() => import('./pages/admin/CategoryManagement'))
const Settings = lazy(() => import('./pages/admin/Settings'))
const Analytics = lazy(() => import('./pages/admin/Analytics'))
const Suggestions = lazy(() => import('./pages/admin/Suggestions'))
const Integrations = lazy(() => import('./pages/admin/Integrations'))

import { useContentProtection } from './hooks/useContentProtection'
import MobileBottomNav from './components/MobileBottomNav'

function App() {
    useContentProtection() // 🛡️ ATIVA BLOQUEIO DE CÓPIA/DOWNLOAD

    return (
        <AuthProvider>
            <TrialTimer />
            <Suspense fallback={<PageLoader />}>
                <Routes>
                    {/* ========================================
                        ÁREA PÚBLICA & AUTH
                    ======================================== */}
                    <Route path="/login" element={<Login />} />
                    <Route path="/register" element={<Register />} />
                    <Route path="/forgot-password" element={<ForgotPassword />} />
                    <Route path="/update-password" element={<UpdatePassword />} />
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
                        {/* <Route path="categorias" element={<CategoryManagement />} /> REMOVED */}
                        <Route path="configuracoes" element={<Settings />} />
                        <Route path="analytics" element={<Analytics />} />
                        <Route path="sugestoes" element={<Suggestions />} />
                        {/* <Route path="integracoes" element={<Integrations />} /> REMOVED */}
                    </Route>

                    {/* Fallback */}
                    <Route path="*" element={<Navigate to="/" replace />} />
                </Routes>
            </Suspense>
            <MobileBottomNav />
            <Toaster position="top-right" richColors />
        </AuthProvider >
    )
}

export default App
