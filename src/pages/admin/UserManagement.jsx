
import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import DataTable from '@/components/admin/DataTable'
import { User, Mail, Calendar, CreditCard, Shield, MoreVertical, CheckCircle, XCircle, Search, RefreshCw, Loader2, PlayCircle, AlertCircle, X } from 'lucide-react'
import { toast } from 'sonner'

export default function UserManagement() {
    const [selectedUser, setSelectedUser] = useState(null)
    const [showModal, setShowModal] = useState(false)
    const [modalData, setModalData] = useState({})
    const [updating, setUpdating] = useState(false)
    const [users, setUsers] = useState([])
    const [loading, setLoading] = useState(true)
    const [stats, setStats] = useState({ total: 0, active: 0, newToday: 0 })

    // Reprocess State
    const [showReprocessModal, setShowReprocessModal] = useState(false)
    const [reprocessId, setReprocessId] = useState('')
    const [reprocessing, setReprocessing] = useState(false)

    const handleAutoReprocess = async (email) => {
        if (!email) return alert('Usuário sem email.')
        if (!confirm(`Tentar reprocessar automaticamente o último pagamento de ${email}?`)) return

        setReprocessing(true)
        try {
            // 1. Buscar última transação deste email
            const { data: intent, error: intentError } = await supabase
                .from('payment_intents')
                .select('transaction_id')
                .eq('email', email)
                .order('created_at', { ascending: false })
                .limit(1)
                .single()

            if (intentError || !intent) {
                alert('❌ Nenhuma transação encontrada no sistema para este email.')
                return
            }

            // 2. Reprocessar
            const { data, error } = await supabase.rpc('reprocess_payment_intent', {
                p_transaction_id: intent.transaction_id
            })

            if (error) throw error

            if (data.success) {
                alert('✅ Sucesso: ' + data.message)
                fetchUsers()
            } else {
                alert('❌ Erro: ' + (data.error || 'Erro desconhecido'))
            }
        } catch (error) {
            console.error('Error auto-processing:', error)
            alert('Erro: ' + error.message)
        } finally {
            setReprocessing(false)
        }
    }

    // Mantendo o manual caso precise
    const handleReprocess = async () => {
        if (!reprocessId.trim()) return alert('Digite o ID da transação')

        setReprocessing(true)
        try {
            const { data, error } = await supabase.rpc('reprocess_payment_intent', {
                p_transaction_id: reprocessId.trim()
            })

            if (error) throw error

            if (data.success) {
                alert('✅ Sucesso: ' + data.message)
                setShowReprocessModal(false)
                setReprocessId('')
                fetchUsers()
            } else {
                alert('❌ Erro: ' + (data.error || 'Erro desconhecido ao reprocessar'))
            }
        } catch (error) {
            console.error('Error reprocessing:', error)
            alert('Erro ao chamar o sistema: ' + error.message)
        } finally {
            setReprocessing(false)
        }
    }

    useEffect(() => {
        fetchUsers()
    }, [])

    const fetchUsers = async () => {
        try {
            setLoading(true)
            const { data, error } = await supabase
                .from('profiles')
                .select('*')
                .order('created_at', { ascending: false })

            if (error) throw error

            setUsers(data || [])

            // Calculate quick stats (Safe Checks)
            const total = data ? data.length : 0
            const active = data ? data.filter(u => u.subscription_active === true).length : 0
            const today = new Date().toISOString().split('T')[0]
            const newToday = data ? data.filter(u => u.created_at && u.created_at.startsWith(today)).length : 0

            setStats({ total, active, newToday })

        } catch (error) {
            console.error('Error fetching users:', error)
        } finally {
            setLoading(false)
        }
    }

    const formatDate = (dateString) => {
        if (!dateString) return 'N/A'
        try {
            return new Date(dateString).toLocaleDateString('pt-BR')
        } catch (e) {
            return 'Inválida'
        }
    }

    const getPlanBadge = (plan) => {
        const colors = {
            'monthly': 'bg-blue-500/10 text-blue-400 border-blue-500/20',
            'annual': 'bg-purple-500/10 text-purple-400 border-purple-500/20',
            'lifetime': 'bg-amber-500/10 text-amber-400 border-amber-500/20',
            'quarterly': 'bg-green-500/10 text-green-400 border-green-500/20'
        }

        const labels = {
            'monthly': 'Mensal',
            'annual': 'Anual',
            'lifetime': 'Vitalício',
            'quarterly': 'Trimestral'
        }

        return (
            <span className={`px-2 py-1 rounded-md text-xs font-medium border ${colors[plan] || 'bg-gray-500/10 text-gray-400 border-gray-500/20'}`}>
                {labels[plan] || plan || 'Nenhum'}
            </span>
        )
    }

    const handleManage = (user) => {
        setSelectedUser(user)
        // Safe Date Parsing
        let expDate = ''
        if (user.plan_expira_em) {
            try {
                expDate = new Date(user.plan_expira_em).toISOString().split('T')[0]
            } catch (e) {
                console.error("Invalid date:", user.plan_expira_em)
            }
        }

        setModalData({
            subscription_active: user.subscription_active || false,
            plan_atual: user.plan_atual || '',
            plan_expira_em: expDate
        })
        setShowModal(true)
    }

    const handleDelete = async (userId) => {
        if (!confirm('Tem certeza que deseja apagar este usuário? Esta ação é irreversível.')) return

        try {
            const { error } = await supabase.from('profiles').delete().eq('id', userId)
            if (error) throw error
            fetchUsers()
        } catch (error) {
            console.error('Error deleting user:', error)
            alert('Erro ao apagar usuário')
        }
    }

    const handleSaveSubscription = async () => {
        try {
            setUpdating(true)

            // Logic: If plan is empty, forcing content to inactive
            const isNoPlan = !modalData.plan_atual || modalData.plan_atual === ''

            const updates = {
                subscription_active: isNoPlan ? false : modalData.subscription_active,
                plan_atual: isNoPlan ? null : modalData.plan_atual,
                plan_expira_em: (modalData.plan_expira_em && !isNoPlan) ? new Date(modalData.plan_expira_em).toISOString() : null,
                plan_status: isNoPlan ? 'inactive' : (modalData.subscription_active ? 'active' : 'inactive')
            }

            const { error } = await supabase
                .from('profiles')
                .update(updates)
                .eq('id', selectedUser.id)

            if (error) throw error

            setShowModal(false)
            fetchUsers()
            alert('Assinatura atualizada com sucesso!')
        } catch (error) {
            console.error('Error updating subscription:', error)
            alert('Erro ao atualizar assinatura: ' + error.message)
        } finally {
            setUpdating(false)
        }
    }

    const grant30Days = () => {
        const today = new Date()
        const nextMonth = new Date(today.setDate(today.getDate() + 30))
        setModalData({
            ...modalData,
            subscription_active: true,
            plan_atual: modalData.plan_atual || 'monthly',
            plan_expira_em: nextMonth.toISOString().split('T')[0]
        })
    }

    const columns = [
        {
            header: 'Usuário',
            accessor: 'email',
            render: (value, row) => (
                <div className="flex items-center gap-3">
                    <div className="w-10 h-10 rounded-full bg-white/5 flex items-center justify-center text-gray-400">
                        {row.avatar_url ? (
                            <img src={row.avatar_url} alt={value} className="w-full h-full rounded-full object-cover" />
                        ) : (
                            <User className="w-5 h-5" />
                        )}
                    </div>
                    <div>
                        <p className="font-medium text-white">{row.full_name || row.name || 'Usuário'}</p>
                        <div className="flex items-center gap-1.5 text-xs text-gray-500">
                            <Mail className="w-3 h-3" />
                            {value}
                        </div>
                    </div>
                </div>
            )
        },
        {
            header: 'Status da Assinatura',
            accessor: 'plan_status',
            render: (value, row) => {
                const isActive = row.subscription_active
                const status = (row.plan_status || 'none').toLowerCase()

                if (isActive) {
                    return (
                        <div className="flex items-center gap-2 text-sm text-green-400 bg-green-500/10 px-2 py-1 rounded-md border border-green-500/20">
                            <CheckCircle className="w-4 h-4" />
                            <span className="font-bold">Ativo</span>
                        </div>
                    )
                }

                if (status === 'pending' || status === 'waiting_payment') {
                    return (
                        <div className="flex items-center gap-2 text-sm text-yellow-500 bg-yellow-500/10 px-2 py-1 rounded-md border border-yellow-500/20">
                            <CreditCard className="w-4 h-4" />
                            <span className="font-bold">Pendente</span>
                        </div>
                    )
                }

                // Default / Inactive -> User requested "Nenhuma"
                return (
                    <div className="flex items-center gap-2 text-sm text-gray-400 bg-gray-500/10 px-2 py-1 rounded-md border border-gray-500/20">
                        <XCircle className="w-4 h-4" />
                        <span>Nenhuma</span>
                    </div>
                )
            }
        },
        {
            header: 'Plano Atual',
            accessor: 'plan_atual',
            render: (value) => getPlanBadge(value)
        },
        {
            header: 'Expira ern',
            accessor: 'plan_expira_em',
            render: (value) => (
                <div className="flex items-center gap-2 text-sm text-gray-400">
                    <Calendar className="w-4 h-4" />
                    {value ? formatDate(value) : 'N/A'}
                </div>
            )
        },
        {
            header: 'Ações',
            accessor: 'id',
            className: 'text-right',
            render: (value, row) => (
                <div className="flex items-center justify-end gap-2">
                    <button
                        onClick={() => handleAutoReprocess(row.email)}
                        className="p-1.5 text-purple-400 hover:text-purple-300 hover:bg-purple-500/10 rounded-lg transition-colors"
                        title="Reprocessar Último Pagamento (Automático)"
                    >
                        <RefreshCw className="w-4 h-4" />
                    </button>
                    <button
                        onClick={() => handleManage(row)}
                        className="flex items-center gap-1.5 px-3 py-1.5 text-xs font-medium text-purple-400 bg-purple-500/10 hover:bg-purple-500/20 border border-purple-500/20 rounded-lg transition-colors"
                    >
                        <User className="w-3 h-3" />
                        Gerenciar
                    </button>
                    <button
                        onClick={() => handleDelete(row.id)}
                        className="p-1.5 text-red-400 hover:text-red-300 hover:bg-red-500/10 rounded-lg transition-colors"
                        title="Apagar Usuário"
                    >
                        <Shield className="w-4 h-4" />
                    </button>
                </div>
            )
        }
    ]

    return (
        <div className="space-y-6">
            <div className="flex items-center justify-between">
                <div>
                    <h1 className="text-3xl font-black text-white mb-2">Usuários</h1>
                    <p className="text-gray-400">Gerencie todos os usuários e suas assinaturas.</p>
                </div>
                <div className="flex gap-4 items-center">
                    <div className="px-4 py-2 bg-white/5 rounded-lg border border-white/10 text-center">
                        <span className="block text-2xl font-bold text-white">{stats.total}</span>
                        <span className="text-xs text-gray-500">Total</span>
                    </div>
                    <div className="px-4 py-2 bg-green-500/10 rounded-lg border border-green-500/20 text-center">
                        <span className="block text-2xl font-bold text-green-400">{stats.active}</span>
                        <span className="text-xs text-green-500/70">Ativos</span>
                    </div>
                </div>
            </div>

            {loading ? (
                <div className="flex items-center justify-center h-64">
                    <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary"></div>
                </div>
            ) : (
                <DataTable
                    columns={columns}
                    data={users}
                    searchPlaceholder="Buscar por nome ou email..."
                />
            )}

            {/* SUBSCRIPTION MODAL */}
            {showModal && selectedUser && (
                <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/80 backdrop-blur-sm">
                    <div className="w-full max-w-md bg-[#1a1d24] border border-white/10 rounded-xl shadow-2xl animate-fade-in">
                        <div className="flex items-center justify-between p-4 border-b border-white/10">
                            <h2 className="text-lg font-bold text-white">Gerenciar Assinatura</h2>
                            <button onClick={() => setShowModal(false)} className="text-gray-400 hover:text-white">
                                <XCircle className="w-5 h-5" />
                            </button>
                        </div>

                        <div className="p-4 space-y-4">
                            {/* User Info */}
                            <div className="bg-white/5 p-3 rounded-lg border border-white/5">
                                <p className="font-bold text-white">{selectedUser.full_name || selectedUser.name || 'Usuário'}</p>
                                <p className="text-xs text-gray-400">{selectedUser.email}</p>
                            </div>

                            {/* Current Status Box */}
                            <div className="bg-[#0f1014] p-3 rounded-lg border border-white/5 flex justify-between items-center">
                                <div>
                                    <p className="text-xs text-gray-500 mb-1">Status Atual</p>
                                    <div className={`inline-flex items-center gap-1.5 px-2 py-0.5 rounded text-xs font-bold ${modalData.subscription_active ? 'bg-green-500/20 text-green-400' : 'bg-gray-700 text-gray-400'}`}>
                                        {modalData.subscription_active ? 'Ativo' : 'Inativo'}
                                    </div>
                                </div>
                                <div className="text-right">
                                    <p className="text-xs text-gray-500 mb-1">Expira em</p>
                                    <p className="text-sm text-white font-mono">{modalData.plan_expira_em ? new Date(modalData.plan_expira_em).toLocaleDateString() : 'N/A'}</p>
                                </div>
                            </div>

                            {/* Quick Action */}
                            <button
                                onClick={grant30Days}
                                className="w-full py-2 bg-amber-500 hover:bg-amber-600 text-black font-bold rounded-lg transition-colors flex items-center justify-center gap-2"
                            >
                                <CreditCard className="w-4 h-4" />
                                Conceder 30 Dias (Ação Rápida)
                            </button>

                            <hr className="border-white/10 my-2" />

                            {/* Fields */}
                            <div>
                                <label className="block text-xs text-gray-400 mb-1.5">Novo Status</label>
                                <select
                                    className="w-full bg-[#0f1014] border border-white/10 text-white text-sm rounded-lg p-2.5 focus:border-primary focus:outline-none"
                                    value={modalData.subscription_active}
                                    onChange={(e) => setModalData({ ...modalData, subscription_active: e.target.value === 'true' })}
                                >
                                    <option value="true">Active (Ativo)</option>
                                    <option value="false">Inactive (Inativo)</option>
                                </select>
                            </div>

                            <div>
                                <label className="block text-xs text-gray-400 mb-1.5">Plano</label>
                                <select
                                    className="w-full bg-[#0f1014] border border-white/10 text-white text-sm rounded-lg p-2.5 focus:border-primary focus:outline-none"
                                    value={modalData.plan_atual}
                                    onChange={(e) => setModalData({ ...modalData, plan_atual: e.target.value })}
                                >
                                    <option value="">Sem Plano</option>
                                    <option value="monthly">Mensal</option>
                                    <option value="quarterly">Trimestral</option>
                                    <option value="annual">Anual</option>
                                    <option value="lifetime">Vitalício</option>
                                </select>
                            </div>

                            <div>
                                <label className="block text-xs text-gray-400 mb-1.5">Nova Data de Expiração</label>
                                <input
                                    type="date"
                                    className="w-full bg-[#0f1014] border border-white/10 text-white text-sm rounded-lg p-2.5 focus:border-primary focus:outline-none"
                                    value={modalData.plan_expira_em}
                                    onChange={(e) => setModalData({ ...modalData, plan_expira_em: e.target.value })}
                                />
                                <p className="text-[10px] text-gray-500 mt-1">A assinatura expirará às 23:59:59 desta data</p>
                            </div>
                        </div>

                        <div className="flex items-center gap-3 p-4 border-t border-white/10 bg-[#0f1014]/50 rounded-b-xl">
                            <button
                                onClick={() => setShowModal(false)}
                                className="flex-1 py-2 text-sm text-white hover:bg-white/5 rounded-lg border border-white/10 transition-colors"
                            >
                                Cancelar
                            </button>
                            <button
                                onClick={handleSaveSubscription}
                                disabled={updating}
                                className="flex-1 py-2 text-sm bg-purple-600 hover:bg-purple-700 text-white font-bold rounded-lg transition-colors flex items-center justify-center gap-2 disabled:opacity-50"
                            >
                                {updating ? 'Salvando...' : 'Salvar Alterações'}
                            </button>
                        </div>
                    </div>
                </div>
            )}

            {/* Reprocess Modal */}
            {showReprocessModal && (
                <div className="fixed inset-0 bg-black/80 backdrop-blur-sm flex items-center justify-center z-50 p-4">
                    <div className="bg-card border border-white/10 rounded-xl max-w-md w-full">
                        <div className="border-b border-white/10 p-6 flex items-center justify-between">
                            <h2 className="text-2xl font-bold text-white">Reprocessar Pagamento</h2>
                            <button
                                onClick={() => setShowReprocessModal(false)}
                                className="p-2 hover:bg-white/10 rounded-lg text-gray-400 hover:text-white transition-all"
                            >
                                <X className="w-6 h-6" />
                            </button>
                        </div>
                        <div className="p-6 space-y-4">
                            <div className="bg-yellow-500/10 border border-yellow-500/20 rounded-lg p-3">
                                <p className="text-sm text-yellow-200 flex gap-2">
                                    <AlertCircle className="w-4 h-4 mt-0.5" />
                                    Use isso caso um pagamento tenha sido confirmado no banco (PushinPay) mas não liberou o acesso aqui.
                                </p>
                            </div>
                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2">Transaction ID (do Gateway)</label>
                                <input
                                    type="text"
                                    placeholder="Ex: a0b25fa3..."
                                    value={reprocessId}
                                    onChange={(e) => setReprocessId(e.target.value)}
                                    className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary font-mono text-sm"
                                />
                            </div>
                            <div className="flex justify-end gap-4 pt-4">
                                <button
                                    onClick={() => setShowReprocessModal(false)}
                                    className="px-6 py-3 bg-white/10 hover:bg-white/20 text-white rounded-lg font-bold transition-all"
                                >
                                    Cancelar
                                </button>
                                <button
                                    onClick={handleReprocess}
                                    disabled={reprocessing}
                                    className="px-6 py-3 bg-purple-600 hover:bg-purple-700 text-white rounded-lg font-bold transition-all flex items-center gap-2 disabled:opacity-50"
                                >
                                    {reprocessing ? (
                                        <>
                                            <Loader2 className="w-5 h-5 animate-spin" />
                                            Processando...
                                        </>
                                    ) : (
                                        <>
                                            <PlayCircle className="w-5 h-5" />
                                            Processar
                                        </>
                                    )}
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            )}
        </div>
    )
}
