
import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import DataTable from '@/components/admin/DataTable'
import { MessageSquare, CheckCircle, XCircle, Clock, AlertCircle } from 'lucide-react'

export default function Suggestions() {
    const [suggestions, setSuggestions] = useState([])
    const [loading, setLoading] = useState(true)

    useEffect(() => {
        fetchSuggestions()
    }, [])

    const fetchSuggestions = async () => {
        try {
            const { data, error } = await supabase
                .from('dorama_suggestions')
                .select(`
                    *,
                    profiles:user_id (
                        email,
                        name
                    )
                `)
                .order('created_at', { ascending: false })

            if (error) {
                // Ignore 404/PGRST100 if table doesn't exist yet, but we expect it from schema
                console.error('Error fetching suggestions:', error)
                if (error.code !== '42P01') throw error
            }

            setSuggestions(data || [])
        } catch (error) {
            console.error('Error:', error)
        } finally {
            setLoading(false)
        }
    }

    const handleStatusUpdate = async (id, newStatus) => {
        try {
            const { error } = await supabase
                .from('dorama_suggestions')
                .update({ status: newStatus })
                .eq('id', id)

            if (error) throw error
            fetchSuggestions()
        } catch (error) {
            alert('Erro ao atualizar status: ' + error.message)
        }
    }

    const getStatusBadge = (status) => {
        const badges = {
            approved: { bg: 'bg-green-500/20', text: 'text-green-400', icon: CheckCircle, label: 'Aprovado' },
            rejected: { bg: 'bg-red-500/20', text: 'text-red-400', icon: XCircle, label: 'Rejeitado' },
            completed: { bg: 'bg-blue-500/20', text: 'text-blue-400', icon: CheckCircle, label: 'Concluído' },
            pending: { bg: 'bg-yellow-500/20', text: 'text-yellow-400', icon: AlertCircle, label: 'Pendente' }
        }

        const badge = badges[status] || badges.pending
        const Icon = badge.icon

        return (
            <span className={`inline-flex items-center gap-1 px-2 py-1 rounded text-xs font-bold ${badge.bg} ${badge.text}`}>
                <Icon className="w-3 h-3" />
                {badge.label}
            </span>
        )
    }

    const columns = [
        {
            header: 'Título Sugerido',
            accessor: 'title',
            render: (value, row) => (
                <div>
                    <p className="font-bold text-white">{value}</p>
                    {row.description && <p className="text-xs text-gray-400 truncate max-w-xs">{row.description}</p>}
                </div>
            )
        },
        {
            header: 'Usuário',
            accessor: 'user_id',
            render: (value, row) => (
                <div className="text-sm">
                    <p className="text-gray-300">{row.profiles?.name || 'Anônimo'}</p>
                    <p className="text-xs text-gray-500">{row.profiles?.email}</p>
                </div>
            )
        },
        {
            header: 'Data',
            accessor: 'created_at',
            render: (value) => new Date(value).toLocaleDateString('pt-BR')
        },
        {
            header: 'Status',
            accessor: 'status',
            render: (value) => getStatusBadge(value)
        },
        {
            header: 'Ações',
            accessor: 'id',
            render: (value, row) => (
                <div className="flex gap-2">
                    {row.status === 'pending' && (
                        <>
                            <button
                                onClick={(e) => { e.stopPropagation(); handleStatusUpdate(value, 'approved') }}
                                className="p-1 hover:bg-green-500/20 rounded text-green-400"
                                title="Aprovar"
                            >
                                <CheckCircle className="w-4 h-4" />
                            </button>
                            <button
                                onClick={(e) => { e.stopPropagation(); handleStatusUpdate(value, 'rejected') }}
                                className="p-1 hover:bg-red-500/20 rounded text-red-400"
                                title="Rejeitar"
                            >
                                <XCircle className="w-4 h-4" />
                            </button>
                        </>
                    )}
                </div>
            )
        }
    ]

    return (
        <div className="space-y-6 animate-fade-in">
            <div className="flex justify-between items-center">
                <div>
                    <h1 className="text-3xl font-black text-white mb-2">Sugestões de Usuários</h1>
                    <p className="text-gray-400">{suggestions.length} sugestões recebidas</p>
                </div>
            </div>

            {loading ? (
                <div className="flex items-center justify-center h-64">
                    <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary"></div>
                </div>
            ) : (
                <DataTable
                    columns={columns}
                    data={suggestions}
                    searchPlaceholder="Buscar sugestão..."
                />
            )}
        </div>
    )
}
