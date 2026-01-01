import { Outlet, Navigate, useLocation } from 'react-router-dom'
import { useAuth } from '@/contexts/AuthContext'
import AppNavbar from './AppNavbar'
import LandingPage from '@/pages/public/LandingPage'
import { Loader2 } from 'lucide-react'
import WhatsAppButton from '@/components/WhatsAppButton' // NEW

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

    // User is authenticated, show app
    return (
        <div className="min-h-screen bg-background">
            <AppNavbar />
            <main className="pt-16">
                <Outlet />
            </main>
            <WhatsAppButton /> {/* NEW: Global Support Button */}
        </div>
    )
}
