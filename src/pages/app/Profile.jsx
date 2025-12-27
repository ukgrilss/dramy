import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import { useAuth } from '@/contexts/AuthContext'
import {
    User,
    CreditCard,
    Clock,
    Shield,
    LogOut,
    Settings,
    CheckCircle,
    AlertTriangle,
    ChevronRight,
    Loader2,
    Calendar,
    Download
} from 'lucide-react'
import { Link } from 'react-router-dom'

export default function Profile() {
    const { user, signOut, profile: contextProfile } = useAuth()
    const [profile, setProfile] = useState(null)
    const [subscriptions, setSubscriptions] = useState([])
    const [loading, setLoading] = useState(true)

    // Edit State
    const [editingMode, setEditingMode] = useState(null) // 'name' | 'password' | null
    const [newName, setNewName] = useState('')
    const [newPassword, setNewPassword] = useState('')
    const [updateLoading, setUpdateLoading] = useState(false)
    const [message, setMessage] = useState(null)

    // Handlers
    const handleUpdateName = async () => {
        if (!newName.trim()) return
        setUpdateLoading(true)
        setMessage(null)

        try {
            // Update Auth Metadata
            const { error: authError } = await supabase.auth.updateUser({
                data: { name: newName }
            })
            if (authError) throw authError

            // Update Profiles Table (since we rely on it too)
            const { error: dbError } = await supabase
                .from('profiles')
                .update({ full_name: newName })
                .eq('id', user.id)

            if (dbError) throw dbError

            // Update local state
            setProfile(prev => ({ ...prev, full_name: newName }))
            setEditingMode(null)
            setMessage({ type: 'success', text: 'Nome atualizado com sucesso!' })
        } catch (error) {
            console.error(error)
            setMessage({ type: 'error', text: 'Erro ao atualizar nome.' })
        } finally {
            setUpdateLoading(false)
        }
    }

    const handleUpdatePassword = async () => {
        if (newPassword.length < 6) {
            setMessage({ type: 'error', text: 'A senha deve ter pelo menos 6 caracteres.' })
            return
        }
        setUpdateLoading(true)
        setMessage(null)

        try {
            const { error } = await supabase.auth.updateUser({
                password: newPassword
            })
            if (error) throw error

            setEditingMode(null)
            setNewPassword('')
            setMessage({ type: 'success', text: 'Senha alterada com sucesso!' })
        } catch (error) {
            console.error(error)
            setMessage({ type: 'error', text: 'Erro ao alterar senha. Tente novamente.' })
        } finally {
            setUpdateLoading(false)
        }
    }

    useEffect(() => {
        if (!user) return

        async function loadData() {
            try {
                setLoading(true)

                // 1. Fetch Subscriptions History (We still need this)
                const { data: subsData, error: subsError } = await supabase
                    .from('subscriptions')
                    .select('*')
                    .eq('user_id', user.id)
                    .order('created_at', { ascending: false })

                if (subsError) throw subsError
                setSubscriptions(subsData || [])
                setLoading(false)

            } catch (error) {
                console.error('Erro ao carregar histórico:', error)
                setLoading(false)
            }
        }

        loadData()
    }, [user])

    // Use profile from Context (which comes from Secure RPC)
    // If context profile is loading/null, we might flash loading, but usually it's ready by now
    // We can use a local combined state or just prefer the context one.

    // We don't need local 'profile' state anymore if we fully rely on context, 
    // but the edit functions update local state.
    // Let's sync local state with context profile when it changes

    useEffect(() => {
        if (contextProfile) {
            setProfile(contextProfile)
        }
    }, [contextProfile])



    // --- Helpers ---
    const formatDate = (dateString) => {
        if (!dateString) return 'Vitalício'
        return new Date(dateString).toLocaleDateString('pt-BR', {
            day: '2-digit',
            month: 'long',
            year: 'numeric'
        })
    }

    const getStatusColor = (status) => {
        switch (status) {
            case 'active': return 'text-green-400 bg-green-400/10 border-green-400/20'
            case 'canceled': return 'text-red-400 bg-red-400/10 border-red-400/20'
            case 'expired': return 'text-gray-400 bg-gray-400/10 border-gray-400/20'
            case 'pending': return 'text-yellow-400 bg-yellow-400/10 border-yellow-400/20'
            default: return 'text-gray-400 bg-gray-400/10'
        }
    }

    const getPlanName = (slug) => {
        const names = {
            'monthly': 'Plano Mensal',
            'quarterly': 'Plano Trimestral',
            'annual': 'Plano Anual',
            'lifetime': 'Vitalício'
        }
        return names[slug] || slug || 'Gratuito'
    }

    // --- Loading State ---
    if (loading) {
        return (
            <div className="flex h-[calc(100vh-80px)] items-center justify-center">
                <Loader2 className="w-8 h-8 animate-spin text-primary" />
            </div>
        )
    }

    const isTrial = profile?.trial_active && new Date(profile?.trial_expires_at) > new Date()
    const isSubscribed = profile?.subscription_active
    const planName = getPlanName(profile?.plan_atual)
    const expirationDate = profile?.plan_expira_em || profile?.trial_expires_at

    return (
        <div className="container mx-auto px-4 py-8 max-w-5xl">
            {/* Header */}
            <div className="flex flex-col md:flex-row items-start md:items-center justify-between mb-8 gap-4">
                <div>
                    <h1 className="text-3xl font-black text-white mb-2">Minha Conta</h1>
                    <p className="text-gray-400 flex items-center gap-2">
                        <User className="w-4 h-4" />
                        {user?.email}
                    </p>
                </div>
                <button
                    onClick={signOut}
                    className="flex items-center gap-2 px-4 py-2 rounded-lg bg-red-500/10 text-red-400 hover:bg-red-500/20 transition-colors border border-red-500/20"
                >
                    <LogOut className="w-4 h-4" />
                    Sair da Conta
                </button>
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
                {/* Coluna Principal - Info Assinatura */}
                <div className="lg:col-span-2 space-y-6">

                    {/* Card de Status da Assinatura */}
                    <div className="bg-card border border-white/10 rounded-2xl p-6 relative overflow-hidden">
                        <div className="absolute top-0 right-0 p-6 opacity-10">
                            <Shield className="w-32 h-32 text-primary" />
                        </div>

                        <h2 className="text-xl font-bold text-white mb-6 flex items-center gap-2">
                            <CreditCard className="w-5 h-5 text-primary" />
                            Assinatura Atual
                        </h2>

                        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <p className="text-sm text-gray-400 mb-1">Plano Atual</p>
                                <p className="text-2xl font-black text-white tracking-tight">{planName}</p>
                            </div>
                            <div>
                                <p className="text-sm text-gray-400 mb-1">Status</p>
                                <div className={`inline-flex items-center gap-2 px-3 py-1 rounded-full text-sm font-medium border ${isSubscribed || isTrial
                                    ? 'text-green-400 bg-green-400/10 border-green-400/20'
                                    : 'text-red-400 bg-red-400/10 border-red-400/20'
                                    }`}>
                                    {isSubscribed || isTrial ? (
                                        <><CheckCircle className="w-4 h-4" /> ATIVO</>
                                    ) : (
                                        <><AlertTriangle className="w-4 h-4" /> INATIVO</>
                                    )}
                                </div>
                            </div>
                            <div>
                                <p className="text-sm text-gray-400 mb-1">Expira em</p>
                                <p className="text-lg font-medium text-white flex items-center gap-2">
                                    <Clock className="w-4 h-4 text-gray-500" />
                                    {expirationDate ? formatDate(expirationDate) : '---'}
                                </p>
                            </div>
                        </div>

                        {(!isSubscribed && !isTrial) && (
                            <div className="mt-8">
                                <Link
                                    to="/planos"
                                    className="inline-flex items-center justify-center w-full md:w-auto px-6 py-3 bg-primary hover:bg-primary/90 text-white font-bold rounded-lg transition-all"
                                >
                                    Renovar Assinatura
                                    <ChevronRight className="w-5 h-5 ml-2" />
                                </Link>
                            </div>
                        )}
                    </div>

                    {/* Histórico de Pagamentos */}
                    <div className="bg-card border border-white/10 rounded-2xl p-6">
                        <h2 className="text-xl font-bold text-white mb-6 flex items-center gap-2">
                            <Calendar className="w-5 h-5 text-primary" />
                            Histórico de Pagamentos
                        </h2>

                        {subscriptions.length === 0 ? (
                            <div className="text-center py-8 text-gray-500">
                                Nenhum pagamento encontrado.
                            </div>
                        ) : (
                            <div className="overflow-x-auto">
                                <table className="w-full text-left border-collapse">
                                    <thead>
                                        <tr className="border-b border-white/10 text-gray-400 text-sm">
                                            <th className="py-3 px-4">Data</th>
                                            <th className="py-3 px-4">Plano</th>
                                            <th className="py-3 px-4">Valor</th>
                                            <th className="py-3 px-4">Status</th>
                                        </tr>
                                    </thead>
                                    <tbody className="text-sm">
                                        {subscriptions.map((sub) => (
                                            <tr key={sub.id} className="border-b border-white/5 hover:bg-white/5 transition-colors">
                                                <td className="py-3 px-4 text-gray-300">
                                                    {new Date(sub.created_at).toLocaleDateString()}
                                                </td>
                                                <td className="py-3 px-4 text-white font-medium">
                                                    {getPlanName(sub.plan)}
                                                </td>
                                                <td className="py-3 px-4 text-gray-300">
                                                    {/* Como não temos 'price' na tabela subscriptions (segundo o setup),
                                                        podemos inferir ou mostrar um traço. Se tiver, usamos. 
                                                        Vou usar um fallback caso não tenha. */}
                                                    {sub.price ? `R$ ${sub.price}` : '-'}
                                                </td>
                                                <td className="py-3 px-4">
                                                    <span className={`inline-block px-2 py-0.5 rounded text-xs font-medium border ${getStatusColor(sub.status)}`}>
                                                        {sub.status.toUpperCase()}
                                                    </span>
                                                </td>
                                            </tr>
                                        ))}
                                    </tbody>
                                </table>
                            </div>
                        )}
                    </div>

                </div>

                {/* Coluna Lateral - Ações */}
                <div className="space-y-6">
                    {/* --- ÁREA DE EDIÇÃO DO PERFIL --- */}
                    <div className="bg-card border border-white/10 rounded-2xl p-6">
                        <h2 className="text-xl font-bold text-white mb-6 flex items-center gap-2">
                            <Settings className="w-5 h-5 text-primary" />
                            Gerenciar Conta
                        </h2>

                        {/* MENSAGEM DE SUCESSO/ERRO */}
                        {message && (
                            <div className={`p-4 rounded-lg mb-4 text-sm font-medium ${message.type === 'success' ? 'bg-green-500/10 text-green-400 border border-green-500/20' : 'bg-red-500/10 text-red-400 border border-red-500/20'
                                }`}>
                                {message.text}
                            </div>
                        )}

                        <div className="space-y-4">

                            {/* --- ALTERAR NOME --- */}
                            <div className="bg-black/40 rounded-xl overflow-hidden border border-white/5">
                                <button
                                    onClick={() => setEditingMode(editingMode === 'name' ? null : 'name')}
                                    className="w-full flex items-center justify-between p-4 hover:bg-white/5 transition-all text-left group"
                                >
                                    <div className="flex items-center gap-3">
                                        <div className="w-10 h-10 rounded-full bg-blue-500/10 flex items-center justify-center text-blue-400">
                                            <User className="w-5 h-5" />
                                        </div>
                                        <div>
                                            <p className="text-white font-medium group-hover:text-primary transition-colors">Alterar nome</p>
                                            <p className="text-xs text-gray-500">
                                                {profile?.full_name || user?.user_metadata?.name || 'Sem nome definido'}
                                            </p>
                                        </div>
                                    </div>
                                    <ChevronRight className={`w-5 h-5 text-gray-600 transition-transform ${editingMode === 'name' ? 'rotate-90' : ''}`} />
                                </button>

                                {editingMode === 'name' && (
                                    <div className="p-4 pt-0 border-t border-white/5">
                                        <div className="mt-4 flex gap-2">
                                            <input
                                                type="text"
                                                placeholder="Novo nome"
                                                className="flex-1 bg-black/50 border border-white/10 rounded-lg px-4 py-2 text-white focus:outline-none focus:border-primary"
                                                value={newName}
                                                onChange={(e) => setNewName(e.target.value)}
                                            />
                                            <button
                                                onClick={handleUpdateName}
                                                disabled={updateLoading}
                                                className="bg-primary hover:bg-primary/90 text-white px-4 py-2 rounded-lg font-bold text-sm transition-colors disabled:opacity-50"
                                            >
                                                {updateLoading ? <Loader2 className="w-4 h-4 animate-spin" /> : 'Salvar'}
                                            </button>
                                        </div>
                                    </div>
                                )}
                            </div>

                            {/* --- ALTERAR SENHA --- */}
                            <div className="bg-black/40 rounded-xl overflow-hidden border border-white/5">
                                <button
                                    onClick={() => setEditingMode(editingMode === 'password' ? null : 'password')}
                                    className="w-full flex items-center justify-between p-4 hover:bg-white/5 transition-all text-left group"
                                >
                                    <div className="flex items-center gap-3">
                                        <div className="w-10 h-10 rounded-full bg-purple-500/10 flex items-center justify-center text-purple-400">
                                            <Shield className="w-5 h-5" />
                                        </div>
                                        <div>
                                            <p className="text-white font-medium group-hover:text-primary transition-colors">Senha e Segurança</p>
                                            <p className="text-xs text-gray-500">Alterar senha de acesso</p>
                                        </div>
                                    </div>
                                    <ChevronRight className={`w-5 h-5 text-gray-600 transition-transform ${editingMode === 'password' ? 'rotate-90' : ''}`} />
                                </button>

                                {editingMode === 'password' && (
                                    <div className="p-4 pt-0 border-t border-white/5 space-y-3">
                                        <p className="text-xs text-gray-400 mt-4">Digite sua nova senha abaixo (mínimo 6 caracteres)</p>
                                        <input
                                            type="password"
                                            placeholder="Nova senha"
                                            className="w-full bg-black/50 border border-white/10 rounded-lg px-4 py-2 text-white focus:outline-none focus:border-primary"
                                            value={newPassword}
                                            onChange={(e) => setNewPassword(e.target.value)}
                                        />
                                        <button
                                            onClick={handleUpdatePassword}
                                            disabled={updateLoading}
                                            className="w-full bg-purple-600 hover:bg-purple-700 text-white py-2 rounded-lg font-bold text-sm transition-colors disabled:opacity-50 flex items-center justify-center gap-2"
                                        >
                                            {updateLoading ? <Loader2 className="w-4 h-4 animate-spin" /> : 'Atualizar Senha'}
                                        </button>
                                    </div>
                                )}
                            </div>

                        </div>
                    </div>

                    {/* Banner Promocional (Se não for vitalício) */}
                    {planName !== 'Vitalício' && (
                        <div className="bg-gradient-to-br from-primary/20 to-purple-900/20 border border-primary/20 rounded-2xl p-6 text-center">
                            <h3 className="text-lg font-bold text-white mb-2">Plano Vitalício</h3>
                            <p className="text-sm text-gray-300 mb-4">
                                Tenha acesso ilimitado para sempre com um pagamento único.
                            </p>
                            <Link
                                to="/planos"
                                className="block w-full py-2 bg-white text-black font-bold rounded-lg hover:bg-gray-100 transition-colors"
                            >
                                Ver Oferta
                            </Link>
                        </div>
                    )}
                </div>
            </div>
        </div>
    )
}
