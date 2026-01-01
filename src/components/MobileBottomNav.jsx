import { Link, useLocation } from 'react-router-dom'
import { Home, Heart, User } from 'lucide-react'
import { useAuth } from '@/contexts/AuthContext'

export default function MobileBottomNav() {
    const location = useLocation()
    const { user } = useAuth()

    const isActive = (path) => location.pathname === path

    // Hide on login/register pages
    if (['/login', '/register'].includes(location.pathname)) return null

    return (
        <div className="fixed bottom-0 left-0 z-50 w-full h-16 bg-[#0a0a0a] border-t border-white/5 md:hidden">
            <div className="grid h-full max-w-lg grid-cols-3 mx-auto font-medium">

                {/* 1. Página inicial */}
                <Link to="/" className="inline-flex flex-col items-center justify-center -mt-1 group relative">
                    <Home className={`w-6 h-6 mb-1 transition-colors ${isActive('/') ? 'text-purple-500 fill-purple-500/20' : 'text-gray-400 group-hover:text-white'}`} />
                    <span className={`text-[11px] ${isActive('/') ? 'text-purple-500 font-bold' : 'text-gray-400 group-hover:text-white'}`}>
                        Página inicial
                    </span>
                    {isActive('/') && (
                        <div className="absolute bottom-0 w-8 h-1 bg-purple-500 rounded-t-full shadow-[0_0_10px_rgb(168,85,247)]"></div>
                    )}
                </Link>

                {/* 2. Minha Lista (Requires Auth) */}
                {user ? (
                    <Link to="/perfil" className="inline-flex flex-col items-center justify-center -mt-1 group relative">
                        <Heart className={`w-6 h-6 mb-1 transition-colors ${isActive('/perfil') ? 'text-purple-500 fill-purple-500/20' : 'text-gray-400 group-hover:text-white'}`} />
                        <span className={`text-[11px] ${isActive('/perfil') ? 'text-purple-500 font-bold' : 'text-gray-400 group-hover:text-white'}`}>
                            Minha Lista
                        </span>
                        {isActive('/perfil') && (
                            <div className="absolute bottom-0 w-6 h-1 bg-purple-500 rounded-t-full shadow-[0_0_10px_rgb(168,85,247)]"></div>
                        )}
                    </Link>
                ) : (
                    <Link to="/login" className="inline-flex flex-col items-center justify-center -mt-1 group relative">
                        <Heart className="w-6 h-6 mb-1 text-gray-400 group-hover:text-white" />
                        <span className="text-[11px] text-gray-400 group-hover:text-white">
                            Minha Lista
                        </span>
                    </Link>
                )}

                {/* 3. Perfil (Requires Auth) */}
                {user ? (
                    <Link to="/conta" className="inline-flex flex-col items-center justify-center -mt-1 group relative">
                        <User className={`w-6 h-6 mb-1 transition-colors ${isActive('/conta') ? 'text-purple-500 fill-purple-500/20' : 'text-gray-400 group-hover:text-white'}`} />
                        <span className={`text-[11px] ${isActive('/conta') ? 'text-purple-500 font-bold' : 'text-gray-400 group-hover:text-white'}`}>
                            Perfil
                        </span>
                        {isActive('/conta') && (
                            <div className="absolute bottom-0 w-6 h-1 bg-purple-500 rounded-t-full shadow-[0_0_10px_rgb(168,85,247)]"></div>
                        )}
                    </Link>
                ) : (
                    <Link to="/login" className="inline-flex flex-col items-center justify-center -mt-1 group relative">
                        <User className="w-6 h-6 mb-1 text-gray-400 group-hover:text-white" />
                        <span className="text-[11px] text-gray-400 group-hover:text-white">
                            Perfil
                        </span>
                    </Link>
                )}

            </div>
        </div>
    )
}
