import { Outlet, useLocation } from 'react-router-dom'
import { useAuth } from '@/contexts/AuthContext'
import AppNavbar from './AppNavbar'
import LandingPage from '@/pages/public/LandingPage'
import { Loader2 } from 'lucide-react'
import WhatsAppButton from '@/components/WhatsAppButton'
import TrialPromoPopup from '@/components/TrialPromoPopup'

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

    // PUBLIC ACCESS ALLOWED
    // We render the App Navbar and Outlet even if not logged in.
    // The Popup will appear for guests.

    return (
        <div className="min-h-screen bg-background">
            <TrialPromoPopup />
            <AppNavbar />
            <main className="pt-16">
                <Outlet />
            </main>
            <WhatsAppButton />
        </div>
    )
}
