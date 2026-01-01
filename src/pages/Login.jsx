import { useState } from 'react'
import { useNavigate, Link, useLocation } from 'react-router-dom'
import { useAuth } from '@/contexts/AuthContext'
import { ArrowLeft, Mail, Lock, Loader2, Play } from 'lucide-react'

export default function Login() {
    const navigate = useNavigate()
    const location = useLocation()
    const { signIn } = useAuth()

    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const [error, setError] = useState('')
    const [loading, setLoading] = useState(false)

    const from = location.state?.from || '/'

    const handleSubmit = async (e) => {
        e.preventDefault()
        setError('')
        setLoading(true)

        try {
            await signIn(email, password)
            navigate(from, { replace: true })
        } catch (err) {
            setError(err.message || 'Erro ao fazer login. Verifique suas credenciais.')
        } finally {
            setLoading(false)
        }
    }

    return (
        <div className="min-h-screen relative flex items-center justify-center p-4 overflow-hidden font-sans">
            {/* CINEMATIC BACKGROUND */}
            <div className="absolute inset-0 z-0">
                <img
                    src="https://images.unsplash.com/photo-1492684223066-81342ee5ff30?q=80&w=2670&auto=format&fit=crop"
                    alt="Background"
                    className="w-full h-full object-cover opacity-40"
                />
                <div className="absolute inset-0 bg-gradient-to-t from-black via-black/80 to-purple-900/40 mix-blend-multiply" />
                <div className="absolute inset-0 bg-black/40 backdrop-blur-[2px]" />
            </div>

            <div className="absolute top-6 left-6 z-20">
                <button
                    onClick={() => navigate(-1)}
                    className="flex items-center gap-2 text-white/70 hover:text-white transition-all hover:-translate-x-1"
                >
                    <ArrowLeft className="w-5 h-5" />
                    <span className="font-bold">Voltar</span>
                </button>
            </div>

            {/* GLASS CARD */}
            <div className="relative z-10 w-full max-w-md">
                <div className="bg-black/30 backdrop-blur-xl border border-white/10 rounded-3xl p-8 md:p-10 shadow-2xl flex flex-col items-center">

                    {/* Brand Logo */}
                    <div className="mb-8 flex flex-col items-center">
                        <div className="w-16 h-16 bg-gradient-to-br from-pink-500 to-purple-600 rounded-2xl flex items-center justify-center shadow-lg shadow-pink-500/20 mb-4 transform hover:rotate-6 transition-transform duration-500">
                            <Play className="w-8 h-8 text-white fill-white" />
                        </div>
                        <h1 className="text-3xl font-black text-white tracking-tight">Bem-vindo de volta</h1>
                        <p className="text-gray-400 mt-2 text-sm">Entre para continuar sua maratona</p>
                    </div>

                    <form onSubmit={handleSubmit} className="w-full space-y-5">
                        {/* Email Input */}
                        <div className="space-y-2">
                            <label className="text-xs font-bold text-gray-400 uppercase tracking-wider ml-1">Email</label>
                            <div className="relative group">
                                <div className="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                                    <Mail className="h-5 w-5 text-gray-500 group-focus-within:text-pink-500 transition-colors" />
                                </div>
                                <input
                                    type="email"
                                    value={email}
                                    onChange={(e) => setEmail(e.target.value)}
                                    required
                                    className="w-full bg-white/5 border border-white/10 text-white rounded-xl py-4 pl-12 pr-4 focus:outline-none focus:border-pink-500/50 focus:ring-4 focus:ring-pink-500/10 transition-all placeholder:text-gray-600"
                                    placeholder="seu@email.com"
                                />
                            </div>
                        </div>

                        {/* Password Input */}
                        <div className="space-y-2">
                            <div className="flex justify-between items-center ml-1">
                                <label className="text-xs font-bold text-gray-400 uppercase tracking-wider">Senha</label>
                                <button
                                    type="button"
                                    onClick={() => alert('Recurso em desenvolvimento.')}
                                    className="text-xs text-pink-400 hover:text-pink-300 transition-colors"
                                >
                                    Esqueceu?
                                </button>
                            </div>
                            <div className="relative group">
                                <div className="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                                    <Lock className="h-5 w-5 text-gray-500 group-focus-within:text-purple-500 transition-colors" />
                                </div>
                                <input
                                    type="password"
                                    value={password}
                                    onChange={(e) => setPassword(e.target.value)}
                                    required
                                    className="w-full bg-white/5 border border-white/10 text-white rounded-xl py-4 pl-12 pr-4 focus:outline-none focus:border-purple-500/50 focus:ring-4 focus:ring-purple-500/10 transition-all placeholder:text-gray-600"
                                    placeholder="••••••••"
                                />
                            </div>
                        </div>

                        {/* Error Message */}
                        {error && (
                            <div className="bg-red-500/20 border border-red-500/50 rounded-xl p-4 flex items-start gap-3 animate-shake">
                                <div className="text-red-200 text-sm font-medium">{error}</div>
                            </div>
                        )}

                        {/* Submit Button */}
                        <button
                            type="submit"
                            disabled={loading}
                            className="w-full bg-gradient-to-r from-pink-600 to-purple-600 hover:from-pink-500 hover:to-purple-500 text-white font-bold py-4 rounded-xl shadow-lg shadow-purple-900/30 transform transition-all active:scale-[0.98] disabled:opacity-70 disabled:cursor-not-allowed flex items-center justify-center gap-2 group"
                        >
                            {loading ? (
                                <>
                                    <Loader2 className="w-5 h-5 animate-spin" />
                                    <span>Entrando...</span>
                                </>
                            ) : (
                                <>
                                    <span>Entrar na Plataforma</span>
                                    <Play className="w-4 h-4 fill-white group-hover:translate-x-1 transition-transform" />
                                </>
                            )}
                        </button>
                    </form>

                    {/* Footer */}
                    <div className="mt-8 text-center">
                        <p className="text-gray-400 text-sm">
                            Novo por aqui?{' '}
                            <Link to="/register" className="text-white font-bold hover:text-pink-400 transition-colors">
                                Crie sua conta grátis
                            </Link>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    )
}
