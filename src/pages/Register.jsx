import { useState, useEffect } from 'react'
import { useNavigate, Link, useSearchParams } from 'react-router-dom'
import { useAuth } from '@/contexts/AuthContext'
import { ArrowLeft, Mail, Lock, User, Loader2, Sparkles } from 'lucide-react'
import { supabase } from '@/lib/supabase'
import { generateFingerprint, getUserAgent } from '@/lib/fingerprint'
import { tkCompleteRegistration } from '@/utils/tiktokPixel'

export default function Register() {
    const navigate = useNavigate()
    const { signUp, refreshProfile } = useAuth()
    const [searchParams] = useSearchParams()
    const isTrialParam = searchParams.get('trial') === 'true'

    const hasUsedTrial = localStorage.getItem('dramy_trial_used') === 'true'
    // FIX: Let backend decide (V3/Secure logic), don't block on client side
    const isTrial = isTrialParam

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
            const { data, error } = await supabase.rpc('register_trial_access_v3', {
                p_ip_address: '127.0.0.1',
                p_fingerprint: fingerprint,
                p_user_agent: userAgent,
                p_user_id: userId,
                p_email: email // FIX: Required to create profile if missing
            })
            if (error) throw error
            return data
            if (error) throw error
            return data
        } catch (error) {
            console.error('Error activating trial:', error)
            return { success: false, message: error.message }
        }
    }

    // DEBUG: Verify if parameter is present
    useEffect(() => {
        if (isTrialParam) {
            console.log('📢 MODO TRIAL DETECTADO')
        } else {
            console.log('⚠️ MODO PADRÃO (Sem Trial)')
        }
    }, [])

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
            const utmParams = {
                utm_source: searchParams.get('utm_source') || '',
                utm_medium: searchParams.get('utm_medium') || '',
                utm_campaign: searchParams.get('utm_campaign') || '',
                utm_content: searchParams.get('utm_content') || '',
                utm_term: searchParams.get('utm_term') || ''
            }

            // Pass trial flag to Metadata so the DB Trigger can pick it up
            const metaData = isTrial ? { trial_active: true, trial_started_at: new Date().toISOString() } : {}

            const result = await signUp(email, password, name, metaData)

            if (result?.user?.id) {
                const userId = result.user.id
                await supabase.from('profiles').update(utmParams).eq('id', userId)

                // 🎵 TikTok Pixel: CompleteRegistration
                tkCompleteRegistration()

                fetch('/api/track-event', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({
                        event: 'lead_created',
                        userId: userId,
                        payload: { email: email, ...utmParams }
                    })
                }).catch(err => console.error('Tracking Error:', err))

                if (isTrial) {
                    // Try to activate trial
                    const trialResult = await activateFreeTrial(userId)

                    if (trialResult?.success) {
                        // Success!
                        localStorage.setItem('dramy_trial_used', 'true')
                        await refreshProfile()
                        // Proceed to home
                        navigate('/', { replace: true })
                    } else {
                        // Trial Failed - Show error to user
                        console.error("Trial activation failed:", trialResult)
                        setError(`Conta criada, mas erro ao ativar teste: ${trialResult?.message || 'Erro desconhecido'}`)
                        // Reset loading so they can see the error
                        setLoading(false)
                        return // Stop here, don't navigate
                    }
                } else {
                    // Not trial, just redirect
                    navigate('/', { replace: true })
                }
            }
        } catch (err) {
            console.error(err)
            // alert('Erro no cadastro: ' + err.message) // REMOVED
            setError(err.message || 'Erro ao criar conta. Tente novamente.')
        } finally {
            setLoading(false)
        }
    }

    return (
        <div className="min-h-screen relative flex items-center justify-center p-4 overflow-hidden font-sans">
            {/* CINEMATIC BACKGROUND */}
            <div className="absolute inset-0 z-0">
                <img
                    src="https://images.unsplash.com/photo-1536440136628-849c177e76a1?q=80&w=2525&auto=format&fit=crop"
                    alt="Background"
                    className="w-full h-full object-cover opacity-40"
                />
                <div className="absolute inset-0 bg-gradient-to-t from-black via-black/80 to-pink-900/40 mix-blend-multiply" />
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
                <div className="bg-black/30 backdrop-blur-xl border border-white/10 rounded-3xl p-8 md:p-10 shadow-2xl">

                    {isTrial && (
                        <div className="mb-6 bg-emerald-500/20 border border-emerald-500/30 rounded-2xl p-4 flex items-center gap-4 animate-in slide-in-from-top-4 fade-in duration-700">
                            <div className="w-10 h-10 rounded-full bg-emerald-500/20 flex items-center justify-center shrink-0">
                                <Sparkles className="w-5 h-5 text-emerald-400" />
                            </div>
                            <div>
                                <p className="text-emerald-400 font-bold text-sm">Presente Ativado</p>
                                <p className="text-emerald-200/80 text-xs">Acesso grátis liberado após cadastro.</p>
                            </div>
                        </div>
                    )}

                    <div className="mb-8">
                        <h1 className="text-3xl font-black text-white tracking-tight mb-2">Crie sua Conta</h1>
                        <p className="text-gray-400 text-sm">Comece a assistir os melhores doramas hoje mesmo.</p>
                    </div>

                    <form onSubmit={handleSubmit} className="space-y-4">
                        {/* INPUTS */}
                        {[
                            { label: 'Nome', icon: User, value: name, set: setName, type: 'text', placeholder: 'Seu nome' },
                            { label: 'Email', icon: Mail, value: email, set: setEmail, type: 'email', placeholder: 'seu@email.com' },
                            { label: 'Senha', icon: Lock, value: password, set: setPassword, type: 'password', placeholder: 'Mínimo 6 dígitos' },
                            { label: 'Confirmar', icon: Lock, value: confirmPassword, set: setConfirmPassword, type: 'password', placeholder: 'Repita a senha' }
                        ].map((field, idx) => (
                            <div key={idx} className="space-y-1">
                                <label className="text-xs font-bold text-gray-400 uppercase tracking-wider ml-1">{field.label}</label>
                                <div className="relative group">
                                    <div className="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                                        <field.icon className="h-5 w-5 text-gray-500 group-focus-within:text-pink-500 transition-colors" />
                                    </div>
                                    <input
                                        type={field.type}
                                        value={field.value}
                                        onChange={(e) => field.set(e.target.value)}
                                        required
                                        className="w-full bg-white/5 border border-white/10 text-white rounded-xl py-3.5 pl-12 pr-4 focus:outline-none focus:border-pink-500/50 focus:ring-4 focus:ring-pink-500/10 transition-all placeholder:text-gray-600 sm:text-sm"
                                        placeholder={field.placeholder}
                                    />
                                </div>
                            </div>
                        ))}

                        {error && (
                            <div className="bg-red-500/20 border border-red-500/50 rounded-xl p-3 text-red-200 text-sm font-medium animate-pulse">
                                {error}
                            </div>
                        )}

                        <button
                            type="submit"
                            disabled={loading}
                            className="w-full mt-4 bg-gradient-to-r from-pink-600 to-purple-600 hover:from-pink-500 hover:to-purple-500 text-white font-bold py-4 rounded-xl shadow-lg shadow-purple-900/30 transform transition-all active:scale-[0.98] disabled:opacity-70 flex items-center justify-center gap-2"
                        >
                            {loading ? <Loader2 className="w-5 h-5 animate-spin" /> : 'Finalizar Cadastro'}
                        </button>
                    </form>

                    <div className="mt-8 text-center">
                        <p className="text-gray-400 text-sm">
                            Já é membro?{' '}
                            <Link to="/login" className="text-white font-bold hover:text-pink-400 transition-colors">
                                Fazer Login
                            </Link>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    )
}
