import { useState, useEffect } from 'react'
import { useNavigate, Link, useSearchParams } from 'react-router-dom'
import { useAuth } from '@/contexts/AuthContext'
import { ArrowLeft, Mail, Lock, User, Loader2 } from 'lucide-react'
import { supabase } from '@/lib/supabase'
import { generateFingerprint, getUserAgent } from '@/lib/fingerprint'

export default function Register() {
    const navigate = useNavigate()
    const { signUp } = useAuth()
    const [searchParams] = useSearchParams()
    const isTrial = searchParams.get('trial') === 'true'

    const [name, setName] = useState('')
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const [confirmPassword, setConfirmPassword] = useState('')
    const [error, setError] = useState('')
    const [loading, setLoading] = useState(false)

    const activateFreeTrial = async (userId) => {
        try {
            const fingerprint = await generateFingerprint()
            const userAgent = getUserAgent()

            // SECURITY UPDATE: IP is now detected Server-Side (headers).
            // We no longer send it from the client to prevent spoofing.

            // Register trial access
            const { data, error } = await supabase.rpc('register_trial_access', {
                p_fingerprint: fingerprint,
                p_user_agent: userAgent,
                p_user_id: userId
            })

            if (error) throw error
            return data
        } catch (error) {
            console.error('Error activating trial:', error)
            return null
        }
    }

    const handleSubmit = async (e) => {
        e.preventDefault()
        setError('')

        if (password !== confirmPassword) {
            setError('As senhas não coincidem')
            return
        }

        if (password.length < 6) {
            setError('A senha deve ter pelo menos 6 caracteres')
            return
        }

        setLoading(true)

        try {
            const result = await signUp(email, password, name)

            // If trial mode, activate trial
            if (isTrial && result?.user?.id) {
                const trialResult = await activateFreeTrial(result.user.id)
                if (!trialResult?.success) {
                    // Show error to user, but continue registration
                    // alert(`Não foi possível ativar o teste grátis: ${trialResult?.message || 'Erro desconhecido'}`)
                }
            }

            navigate('/', { replace: true })
        } catch (err) {
            setError(err.message || 'Erro ao criar conta. Tente novamente.')
        } finally {
            setLoading(false)
        }
    }

    return (
        <div className="min-h-screen bg-background flex items-center justify-center p-4">
            <div className="w-full max-w-md">
                {/* Back Button */}
                <button
                    onClick={() => navigate('/login')}
                    className="mb-6 flex items-center gap-2 text-gray-400 hover:text-white transition-colors"
                >
                    <ArrowLeft className="w-5 h-5" />
                    Voltar para login
                </button>

                {/* Register Card */}
                <div className="bg-card border border-white/10 rounded-2xl p-8 shadow-2xl">
                    {/* Trial Banner */}
                    {isTrial && (
                        <div className="mb-6 bg-green-500/20 border border-green-500/50 rounded-xl p-4 text-center">
                            <p className="text-green-400 font-bold text-lg mb-1">🎁 Teste Gratuito de 10 Minutos</p>
                            <p className="text-sm text-gray-300">Crie sua conta para começar a assistir agora!</p>
                        </div>
                    )}

                    <div className="text-center mb-8">
                        <h1 className="text-3xl font-black text-white mb-2">Criar Conta</h1>
                        <p className="text-gray-400">
                            {isTrial ? 'Preencha seus dados para iniciar o teste' : 'Cadastre-se grátis e comece a assistir'}
                        </p>
                    </div>

                    <form onSubmit={handleSubmit} className="space-y-5">
                        {/* Name Input */}
                        <div>
                            <label className="block text-sm font-bold text-gray-300 mb-2">
                                Nome Completo
                            </label>
                            <div className="relative">
                                <User className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-500" />
                                <input
                                    type="text"
                                    value={name}
                                    onChange={(e) => setName(e.target.value)}
                                    required
                                    className="w-full bg-background border border-white/10 rounded-lg pl-11 pr-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all"
                                    placeholder="Seu nome"
                                />
                            </div>
                        </div>

                        {/* Email Input */}
                        <div>
                            <label className="block text-sm font-bold text-gray-300 mb-2">
                                Email
                            </label>
                            <div className="relative">
                                <Mail className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-500" />
                                <input
                                    type="email"
                                    value={email}
                                    onChange={(e) => setEmail(e.target.value)}
                                    required
                                    className="w-full bg-background border border-white/10 rounded-lg pl-11 pr-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all"
                                    placeholder="seu@email.com"
                                />
                            </div>
                        </div>

                        {/* Password Input */}
                        <div>
                            <label className="block text-sm font-bold text-gray-300 mb-2">
                                Senha
                            </label>
                            <div className="relative">
                                <Lock className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-500" />
                                <input
                                    type="password"
                                    value={password}
                                    onChange={(e) => setPassword(e.target.value)}
                                    required
                                    minLength={6}
                                    className="w-full bg-background border border-white/10 rounded-lg pl-11 pr-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all"
                                    placeholder="Mínimo 6 caracteres"
                                />
                            </div>
                        </div>

                        {/* Confirm Password Input */}
                        <div>
                            <label className="block text-sm font-bold text-gray-300 mb-2">
                                Confirmar Senha
                            </label>
                            <div className="relative">
                                <Lock className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-500" />
                                <input
                                    type="password"
                                    value={confirmPassword}
                                    onChange={(e) => setConfirmPassword(e.target.value)}
                                    required
                                    className="w-full bg-background border border-white/10 rounded-lg pl-11 pr-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all"
                                    placeholder="Digite a senha novamente"
                                />
                            </div>
                        </div>

                        {/* Error Message */}
                        {error && (
                            <div className="bg-red-500/10 border border-red-500/20 rounded-lg p-3 text-red-400 text-sm">
                                {error}
                            </div>
                        )}

                        {/* Submit Button */}
                        <button
                            type="submit"
                            disabled={loading}
                            className="w-full bg-primary hover:bg-primary/90 text-white font-bold py-3 rounded-lg transition-all transform hover:scale-105 active:scale-95 disabled:opacity-50 disabled:cursor-not-allowed disabled:transform-none flex items-center justify-center gap-2"
                        >
                            {loading ? (
                                <>
                                    <Loader2 className="w-5 h-5 animate-spin" />
                                    Criando conta...
                                </>
                            ) : (
                                'Criar Conta'
                            )}
                        </button>
                    </form>

                    {/* Login Link */}
                    <div className="mt-6 text-center">
                        <p className="text-gray-400">
                            Já tem uma conta?{' '}
                            <Link to="/login" className="text-primary font-bold hover:underline">
                                Faça login
                            </Link>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    )
}
