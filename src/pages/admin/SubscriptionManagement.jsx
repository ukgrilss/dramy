```javascript
import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import DataTable from '@/components/admin/DataTable'
import { X, Save, Loader2, CheckCircle, XCircle, Clock, AlertCircle, RefreshCw, PlayCircle } from 'lucide-react'

export default function SubscriptionManagement() {
    const [subscriptions, setSubscriptions] = useState([])
    const [loading, setLoading] = useState(true)
    const [editingSubscription, setEditingSubscription] = useState(null)
    const [showEditModal, setShowEditModal] = useState(false)
    const [saving, setSaving] = useState(false)

    // Reprocess State
    const [showReprocessModal, setShowReprocessModal] = useState(false)
    const [reprocessId, setReprocessId] = useState('')
    const [reprocessing, setReprocessing] = useState(false)
    
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
                fetchSubscriptions()
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

    // Reprocess State
    const [showReprocessModal, setShowReprocessModal] = useState(false)
    const [reprocessId, setReprocessId] = useState('')
    const [reprocessing, setReprocessing] = useState(false)

    useEffect(() => {
        fetchSubscriptions()
    }, [])

    const fetchSubscriptions = async () => {
        try {
            // Fetch subscriptions with user profiles
            const { data, error } = await supabase
                .from('subscriptions')
                .select(`
    *,
    profiles: user_id(
        email,
        name
    )
                `)
                .order('created_at', { ascending: false })

            if (error) throw error
            setSubscriptions(data || [])
        } catch (error) {
            console.error('Error fetching subscriptions:', error)
            alert('Erro ao carregar assinaturas: ' + error.message)
        } finally {
            setLoading(false)
        }
    }

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
                fetchSubscriptions()
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

    // ... (keep handleEdit, validateSubscription, etc. - verifying lines 41-304 match original context, I will skip replacing them and only replace the top and render)
    // Wait, replace_file_content replaces a block. I need to be careful not to delete methods.
    // I should probably split this into two edits or use multi_eplace.
    // However, I can just insert the new methods via a carefully targeted replace.
    // But inserting large chunks is safer if I replace the top part (Imports + Component Start) and then the render part.

    // Method 2: Use multi_replace
    // Chunk 1: Imports
    // Chunk 2: State definition
    // Chunk 3: handleReprocess function (before existing methods)
    // Chunk 4: Button in Header
    // Chunk 5: Modal at bottom

    // I will use multi_replace for safety.


    const handleEdit = (subscription) => {
        setEditingSubscription({
            ...subscription,
            expires_at: subscription.expires_at ? subscription.expires_at.split('T')[0] : ''
        })
        setShowEditModal(true)
    }

    const validateSubscription = () => {
        if (!editingSubscription.status) {
            alert('Status é obrigatório')
            return false
        }

        const validStatuses = ['active', 'canceled', 'expired', 'pending']
        if (!validStatuses.includes(editingSubscription.status)) {
            alert('Status inválido. Use: active, canceled, expired ou pending')
            return false
        }

        if (editingSubscription.status === 'active' && editingSubscription.expires_at) {
            const expirationDate = new Date(editingSubscription.expires_at)
            const today = new Date()
            today.setHours(0, 0, 0, 0)

            if (expirationDate < today) {
                alert('Data de expiração não pode ser no passado para assinaturas ativas')
                return false
            }
        }

        return true
    }

    const handleUpdate = async () => {
        if (!validateSubscription()) return

        setSaving(true)
        try {
            const { error } = await supabase
                .from('subscriptions')
                .update({
                    status: editingSubscription.status,
                    plan: editingSubscription.plan,
                    expires_at: editingSubscription.expires_at || null,
                    updated_at: new Date().toISOString()
                })
                .eq('id', editingSubscription.id)

            if (error) throw error

            // Update profile subscription status
            if (editingSubscription.status === 'active') {
                await supabase
                    .from('profiles')
                    .update({
                        subscription_active: true,
                        plan_atual: editingSubscription.plan,
                        plan_status: 'active',
                        plan_expira_em: editingSubscription.expires_at
                    })
                    .eq('id', editingSubscription.user_id)
            } else {
                await supabase
                    .from('profiles')
                    .update({
                        subscription_active: false,
                        plan_status: editingSubscription.status
                    })
                    .eq('id', editingSubscription.user_id)
            }

            alert('Assinatura atualizada com sucesso!')
            setShowEditModal(false)
            setEditingSubscription(null)
            fetchSubscriptions()
        } catch (error) {
            console.error('Error updating subscription:', error)
            alert('Erro ao atualizar assinatura: ' + error.message)
        } finally {
            setSaving(false)
        }
    }

    const handleCancelSubscription = async (id, userId) => {
        if (!confirm('Tem certeza que deseja cancelar esta assinatura?')) return

        try {
            const { error } = await supabase
                .from('subscriptions')
                .update({
                    status: 'canceled',
                    updated_at: new Date().toISOString()
                })
                .eq('id', id)

            if (error) throw error

            // Update profile
            await supabase
                .from('profiles')
                .update({
                    subscription_active: false,
                    plan_status: 'canceled'
                })
                .eq('id', userId)

            alert('Assinatura cancelada com sucesso!')
            fetchSubscriptions()
        } catch (error) {
            console.error('Error canceling subscription:', error)
            alert('Erro ao cancelar assinatura: ' + error.message)
        }
    }

    const handleReactivateSubscription = async (id, userId, plan) => {
        if (!confirm('Tem certeza que deseja reativar esta assinatura?')) return

        try {
            // Calculate new expiration (30 days from now)
            const expirationDate = new Date()
            expirationDate.setDate(expirationDate.getDate() + 30)

            const { error } = await supabase
                .from('subscriptions')
                .update({
                    status: 'active',
                    expires_at: expirationDate.toISOString(),
                    updated_at: new Date().toISOString()
                })
                .eq('id', id)

            if (error) throw error

            // Update profile
            await supabase
                .from('profiles')
                .update({
                    subscription_active: true,
                    plan_atual: plan,
                    plan_status: 'active',
                    plan_expira_em: expirationDate.toISOString()
                })
                .eq('id', userId)

            alert('Assinatura reativada com sucesso!')
            fetchSubscriptions()
        } catch (error) {
            console.error('Error reactivating subscription:', error)
            alert('Erro ao reativar assinatura: ' + error.message)
        }
    }

    const getStatusBadge = (status) => {
        const badges = {
            active: { bg: 'bg-green-500/20', text: 'text-green-400', icon: CheckCircle, label: 'Ativa' },
            canceled: { bg: 'bg-red-500/20', text: 'text-red-400', icon: XCircle, label: 'Cancelada' },
            expired: { bg: 'bg-gray-500/20', text: 'text-gray-400', icon: Clock, label: 'Expirada' },
            pending: { bg: 'bg-yellow-500/20', text: 'text-yellow-400', icon: AlertCircle, label: 'Pendente' }
        }

        const badge = badges[status] || badges.pending
        const Icon = badge.icon

        return (
            <span className={`inline - flex items - center gap - 1 px - 2 py - 1 rounded text - xs font - bold ${ badge.bg } ${ badge.text } `}>
                <Icon className="w-3 h-3" />
                {badge.label}
            </span>
        )
    }

    const columns = [
        {
            header: 'Usuário',
            accessor: 'user_id',
            render: (value, row) => (
                <div>
                    <p className="font-medium text-white">{row.profiles?.name || row.profiles?.email || 'Usuário'}</p>
                    <p className="text-xs text-gray-500">{row.profiles?.email}</p>
                </div>
            )
        },
        {
            header: 'Plano',
            accessor: 'plan',
            render: (value) => (
                <span className="text-primary font-bold capitalize">{value}</span>
            )
        },
        {
            header: 'Status',
            accessor: 'status',
            render: (value) => getStatusBadge(value)
        },
        {
            header: 'Expira em',
            accessor: 'expires_at',
            render: (value) => {
                if (!value) return <span className="text-gray-500">-</span>
                const date = new Date(value)
                return (
                    <div>
                        <p className="text-white">{date.toLocaleDateString('pt-BR')}</p>
                        <p className="text-xs text-gray-500">{date.toLocaleTimeString('pt-BR')}</p>
                    </div>
                )
            }
        },
        {
            header: 'Transaction ID',
            accessor: 'transaction_id',
            render: (value) => (
                <span className="text-xs text-gray-400 font-mono">{value || '-'}</span>
            )
        },
        {
            header: 'Ações',
            accessor: 'id',
            render: (value, row) => (
                <div className="flex gap-2">
                    <button
                        onClick={(e) => {
                            e.stopPropagation()
                            handleEdit(row)
                        }}
                        className="px-3 py-1 bg-blue-500/20 hover:bg-blue-500/30 text-blue-400 rounded text-xs font-bold transition-all"
                    >
                        Editar
                    </button>
                    {row.status === 'active' ? (
                        <button
                            onClick={(e) => {
                                e.stopPropagation()
                                handleCancelSubscription(value, row.user_id)
                            }}
                            className="px-3 py-1 bg-red-500/20 hover:bg-red-500/30 text-red-400 rounded text-xs font-bold transition-all"
                        >
                            Cancelar
                        </button>
                    ) : (
                        <button
                            onClick={(e) => {
                                e.stopPropagation()
                                handleReactivateSubscription(value, row.user_id, row.plan)
                            }}
                            className="px-3 py-1 bg-green-500/20 hover:bg-green-500/30 text-green-400 rounded text-xs font-bold transition-all"
                        >
                            Reativar
                        </button>
                    )}
                </div>
            )
        }
    ]

    if (loading) {
        return (
            <div className="flex items-center justify-center h-full">
                <Loader2 className="w-8 h-8 animate-spin text-primary" />
            </div>
        )
    }

    return (
        <div className="space-y-6">
            {/* Header */}
            <div className="flex flex-col md:flex-row md:items-center justify-between gap-4">
                <div>
                    <h1 className="text-3xl font-black text-white mb-2">Gerenciamento de Assinaturas</h1>
                    <p className="text-gray-400">{subscriptions.length} assinaturas cadastradas</p>
                </div>
                <button 
                    onClick={() => setShowReprocessModal(true)}
                    className="flex items-center gap-2 px-4 py-2 bg-purple-600 hover:bg-purple-700 text-white rounded-lg font-bold transition-all"
                >
                    <RefreshCw className="w-4 h-4" />
                    Reprocessar ID
                </button>
            </div>

            {/* Stats */}
            <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
                <div className="bg-green-500/10 border border-green-500/20 rounded-xl p-4">
                    <p className="text-sm text-green-400 mb-1">Ativas</p>
                    <p className="text-2xl font-black text-white">
                        {subscriptions.filter(s => s.status === 'active').length}
                    </p>
                </div>
                <div className="bg-red-500/10 border border-red-500/20 rounded-xl p-4">
                    <p className="text-sm text-red-400 mb-1">Canceladas</p>
                    <p className="text-2xl font-black text-white">
                        {subscriptions.filter(s => s.status === 'canceled').length}
                    </p>
                </div>
                <div className="bg-gray-500/10 border border-gray-500/20 rounded-xl p-4">
                    <p className="text-sm text-gray-400 mb-1">Expiradas</p>
                    <p className="text-2xl font-black text-white">
                        {subscriptions.filter(s => s.status === 'expired').length}
                    </p>
                </div>
                <div className="bg-yellow-500/10 border border-yellow-500/20 rounded-xl p-4">
                    <p className="text-sm text-yellow-400 mb-1">Pendentes</p>
                    <p className="text-2xl font-black text-white">
                        {subscriptions.filter(s => s.status === 'pending').length}
                    </p>
                </div>
            </div>

            {/* Table */}
            <DataTable
                columns={columns}
                data={subscriptions}
                searchPlaceholder="Buscar por email, plano..."
            />

            {/* Edit Modal */}
            {showEditModal && editingSubscription && (
                <div className="fixed inset-0 bg-black/80 backdrop-blur-sm flex items-center justify-center z-50 p-4">
                    <div className="bg-card border border-white/10 rounded-xl max-w-md w-full">
                        <div className="border-b border-white/10 p-6 flex items-center justify-between">
                            <h2 className="text-2xl font-bold text-white">Editar Assinatura</h2>
                            <button
                                onClick={() => setShowEditModal(false)}
                                className="p-2 hover:bg-white/10 rounded-lg text-gray-400 hover:text-white transition-all"
                            >
                                <X className="w-6 h-6" />
                            </button>
                        </div>

                        <div className="p-6 space-y-4">
                            {/* User Info */}
                            <div className="bg-white/5 rounded-lg p-3">
                                <p className="text-sm text-gray-400">Usuário:</p>
                                <p className="text-white font-medium">{editingSubscription.profiles?.email}</p>
                            </div>

                            {/* Plan */}
                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2">Plano</label>
                                <select
                                    value={editingSubscription.plan}
                                    onChange={(e) => setEditingSubscription({ ...editingSubscription, plan: e.target.value })}
                                    className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary"
                                >
                                    <option value="monthly">Mensal</option>
                                    <option value="quarterly">Trimestral</option>
                                    <option value="annual">Anual</option>
                                </select>
                            </div>

                            {/* Status */}
                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2">Status</label>
                                <select
                                    value={editingSubscription.status}
                                    onChange={(e) => setEditingSubscription({ ...editingSubscription, status: e.target.value })}
                                    className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary"
                                >
                                    <option value="active">Ativa</option>
                                    <option value="canceled">Cancelada</option>
                                    <option value="expired">Expirada</option>
                                    <option value="pending">Pendente</option>
                                </select>
                            </div>

                            {/* Expiration Date */}
                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2">Data de Expiração</label>
                                <input
                                    type="date"
                                    value={editingSubscription.expires_at}
                                    onChange={(e) => setEditingSubscription({ ...editingSubscription, expires_at: e.target.value })}
                                    className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary"
                                />
                            </div>

                            {/* Actions */}
                            <div className="flex justify-end gap-4 pt-4">
                                <button
                                    onClick={() => setShowEditModal(false)}
                                    className="px-6 py-3 bg-white/10 hover:bg-white/20 text-white rounded-lg font-bold transition-all"
                                >
                                    Cancelar
                                </button>
                                <button
                                    onClick={handleUpdate}
                                    disabled={saving}
                                    className="px-6 py-3 bg-primary hover:bg-primary/90 text-white rounded-lg font-bold transition-all flex items-center gap-2 disabled:opacity-50"
                                >
                                    {saving ? (
                                        <>
                                            <Loader2 className="w-5 h-5 animate-spin" />
                                            Salvando...
                                        </>
                                    ) : (
                                        <>
                                            <Save className="w-5 h-5" />
                                            Salvar
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
