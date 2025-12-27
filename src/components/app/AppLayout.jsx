import { Outlet, Navigate, useLocation } from 'react-router-dom'
import { useAuth } from '@/contexts/AuthContext'
import AppNavbar from './AppNavbar'
import LandingPage from '@/pages/public/LandingPage'
import { Loader2 } from 'lucide-react'

export default function AppLayout() {
    const { user, profile, loading } = useAuth()
    const location = useLocation()

    // Show loading while checking auth
    if (loading) {
        return (
            <div className="min-h-screen bg-background flex items-center justify-center">
                <Loader2 className="w-8 h-8 animate-spin text-primary" />
            </div>
        )
    }

    // 1. If not authenticated, we STILL show the App (Netflix style browsing)
    // The Landing Page is now only at /vendas
    // if (!user) {
    //     return <LandingPage />
    // }

    // 2. Access Control
    // We now allow everyone to browse (Netflix style), but block watching (handled in Watch.jsx)
    // So we DON'T redirect here anymore unless we really want to lock the whole app.

    // Admin bypasses checks
    // const isAdmin = profile?.role === 'admin'
    // const isSubscriber = profile?.subscription_active === true
    // const isTrial = profile?.trial_active === true && new Date(profile?.trial_expires_at) > new Date()

    // if (!isAdmin && !isSubscriber && !isTrial && !isPlanPage) {
    //     return <Navigate to="/plano" replace />
    // }

    // User is authenticated, show app
    return (
        <div className="min-h-screen bg-background">
            <AppNavbar />
            <main className="pt-16">
                <Outlet />
            </main>
        </div>
    )
}
