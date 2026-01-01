
import { useState } from 'react'
import { Link } from 'react-router-dom'
import { supabase } from '@/lib/supabase'
import { MessageCircle, Mail, ArrowLeft, Loader2, CheckCircle2 } from 'lucide-react'

export default function ForgotPassword() {
    const [email, setEmail] = useState('')
    const [loading, setLoading] = useState(false)
    const [success, setSuccess] = useState(false)
    const [error, setError] = useState(null)

    const handleSubmit = async (e) => {
        e.preventDefault()

        if (!email) {
            setError('Por favor, digite seu email.')
            return
        }

        setLoading(true)
        setError(null)

        try {
            const { error } = await supabase.auth.resetPasswordForEmail(email, {
                redirectTo: `${window.location.origin}/update-password`,
            })

            if (error) {
                // Supabase security: it might return generic error if user not found, 
                // but rate limit errors are specific.
                if (error.message.includes('rate limit')) {
                    throw new Error('Muitas tentativas. Aguarde um pouco.')
                }
                throw error
            }

            setSuccess(true)
        } catch (err) {
            console.error(err)
            // SHOW REAL ERROR FOR DEBUGGING
            setError(`Erro: ${err.message || JSON.stringify(err)}`)
        } finally {
            setLoading(false)
        }
    }

    return (
        <div className="min-h-screen bg-[#0a0a0a] flex items-center justify-center p-4 relative overflow-hidden">
            {/* Background Effects */}
            <div className="absolute inset-0 z-0">
                <div className="absolute top-[-20%] left-[-10%] w-[600px] h-[600px] bg-primary/20 rounded-full blur-[120px] animate-pulse-slow"></div>
                <div className="absolute bottom-[-10%] right-[-10%] w-[500px] h-[500px] bg-purple-900/20 rounded-full blur-[100px]"></div>
            </div>

            <div className="w-full max-w-md bg-black/40 backdrop-blur-xl border border-white/10 p-8 rounded-2xl shadow-xl relative z-10 animate-fade-in-up">

                {/* Back Button */}
                <Link to="/login" className="absolute top-6 left-6 text-gray-400 hover:text-white transition-colors">
                    <ArrowLeft className="w-5 h-5" />
                </Link>

                <div className="text-center mb-8 pt-4">
                    <div className="inline-flex items-center justify-center w-16 h-16 rounded-full bg-primary/10 mb-4 border border-primary/20 shadow-glow">
                        <Mail className="w-8 h-8 text-primary" />
                    </div>
                    <h1 className="text-2xl font-bold text-white mb-2">Recuperar Senha</h1>
                    <p className="text-gray-400 text-sm">
                        Digite seu email para receber o link de redefinição.
                    </p>
                </div>

                {success ? (
                    <div className="text-center space-y-6">
                        <div className="bg-green-500/10 border border-green-500/20 rounded-xl p-4 flex flex-col items-center gap-3">
                            <CheckCircle2 className="w-10 h-10 text-green-500" />
                            <p className="text-green-200 font-medium">Email enviado com sucesso!</p>
                        </div>
                        <p className="text-gray-400 text-sm">
                            Verifique sua caixa de entrada (e spam). O link expira em breve.
                        </p>
                        <Link
                            to="/login"
                            className="block w-full bg-white/10 hover:bg-white/20 text-white font-bold py-3 rounded-lg transition-all text-center"
                        >
                            Voltar para o Login
                        </Link>
                    </div>
                ) : (
                    <form onSubmit={handleSubmit} className="space-y-4">
                        {error && (
                            <div className="p-3 bg-red-500/10 border border-red-500/20 rounded-lg text-red-400 text-sm text-center">
                                {error}
                            </div>
                        )}

                        <div className="space-y-2">
                            <label className="text-gray-300 text-sm font-medium ml-1">Email</label>
                            <div className="relative">
                                <Mail className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-500 w-5 h-5" />
                                <input
                                    type="email"
                                    placeholder="seu@email.com"
                                    value={email}
                                    onChange={(e) => setEmail(e.target.value)}
                                    className="w-full bg-black/50 border border-white/10 rounded-lg py-3 pl-10 pr-4 text-white placeholder-gray-500 focus:outline-none focus:border-primary/50 focus:ring-1 focus:ring-primary/50 transition-all"
                                    required
                                />
                            </div>
                        </div>

                        <button
                            type="submit"
                            disabled={loading}
                            className="w-full bg-gradient-to-r from-primary to-purple-600 hover:from-primary/90 hover:to-purple-600/90 text-white font-bold py-3.5 rounded-lg shadow-lg shadow-primary/25 transition-all transform active:scale-95 disabled:opacity-70 disabled:cursor-not-allowed flex items-center justify-center gap-2"
                        >
                            {loading ? <Loader2 className="w-5 h-5 animate-spin" /> : 'Enviar Link de Recuperação'}
                        </button>
                    </form>
                )}
            </div>
        </div>
    )
}
