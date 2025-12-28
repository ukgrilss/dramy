
import { useState, useEffect } from 'react'
import { supabase } from '@/lib/supabase'
import { Activity, Radio, Lock, Save, Globe, Key, Webhook, Loader2, CheckCircle, AlertCircle, RefreshCw } from 'lucide-react'
import { toast } from 'sonner'

export default function Integrations() {
    const [integrations, setIntegrations] = useState([])
    const [loading, setLoading] = useState(true)
    const [configuring, setConfiguring] = useState(null) // ID of integration being edited
    const [formData, setFormData] = useState({})
    const [saving, setSaving] = useState(false)

    // Load Integrations from DB
    const fetchIntegrations = async () => {
        setLoading(true)
        try {
            // We fetch name, enabled, config, id (no need for config unless editing, but easier to fetch all)
            const { data, error } = await supabase
                .from('integrations')
                .select('*')
                .order('name')

            if (error) throw error
            setIntegrations(data || [])
        } catch (error) {
            console.error('Error loading integrations:', error)
            toast.error('Erro ao carregar integrações')
        } finally {
            setLoading(false)
        }
    }

    useEffect(() => {
        fetchIntegrations()
    }, [])

    const handleConfigure = (integration) => {
        setConfiguring(integration.id)
        // Default values merge
        setFormData({
            enabled: integration.enabled,
            api_key: integration.config?.api_key || '',
            event_name: integration.config?.event_name || 'purchase',
            environment: integration.config?.environment || 'production',
            enabled_events: integration.enabled_events || ['purchase']
        })
    }

    const handleSave = async () => {
        if (!configuring) return
        setSaving(true)
        try {
            // Prepare update
            const updateData = {
                enabled: formData.enabled === true || formData.enabled === 'true', // Ensure boolean
                enabled_events: formData.enabled_events,
                config: {
                    api_key: formData.api_key,
                    event_name: formData.event_name,
                    environment: formData.environment
                    // Add other fields dynamically if needed
                }
            }

            const { error } = await supabase
                .from('integrations')
                .update(updateData)
                .eq('id', configuring)

            if (error) throw error

            toast.success('Integração salva com sucesso!')
            setConfiguring(null)
            fetchIntegrations() // Refresh list
        } catch (error) {
            console.error('Error saving:', error)
            toast.error('Erro ao salvar: ' + error.message)
        } finally {
            setSaving(false)
        }
    }

    if (loading) {
        return (
            <div className="flex items-center justify-center h-64">
                <Loader2 className="w-8 h-8 animate-spin text-primary" />
            </div>
        )
    }

    return (
        <div className="space-y-6">
            <div className="flex items-center justify-between">
                <div>
                    <h1 className="text-3xl font-black text-white mb-2">Integrações</h1>
                    <p className="text-gray-400">Conecte ferramentas externas para turbinar sua operação.</p>
                </div>
                <button onClick={fetchIntegrations} className="p-2 hover:bg-white/5 rounded-lg text-gray-400">
                    <RefreshCw className="w-5 h-5" />
                </button>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                {integrations.map((integration) => (
                    <div
                        key={integration.id}
                        className={`bg-card border rounded-xl overflow-hidden transition-all hover:border-white/20 ${integration.enabled ? 'border-green-500/30 shadow-[0_0_15px_rgba(34,197,94,0.1)]' : 'border-white/10'}`}
                    >
                        {/* Header */}
                        <div className="p-6 border-b border-white/5 flex items-start justify-between">
                            <div className="flex items-center gap-4">
                                <div className={`w-12 h-12 rounded-xl flex items-center justify-center border ${integration.name === 'utmify' ? 'bg-purple-500/10 border-purple-500/20 text-purple-400' : 'bg-gray-800 border-white/10 text-gray-500'}`}>
                                    {integration.name === 'utmify' ? <Webhook className="w-6 h-6" /> : <Globe className="w-6 h-6" />}
                                </div>
                                <div>
                                    <h3 className="text-lg font-bold text-white capitalize">{integration.name}</h3>
                                    <div className="flex items-center gap-2 mt-1">
                                        <div className={`w-2 h-2 rounded-full ${integration.enabled ? 'bg-green-500 animate-pulse' : 'bg-gray-600'}`}></div>
                                        <span className={`text-xs font-medium ${integration.enabled ? 'text-green-400' : 'text-gray-500'}`}>
                                            {integration.enabled ? 'Ativo' : 'Inativo'}
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        {/* Body */}
                        <div className="p-6 space-y-4">
                            <p className="text-sm text-gray-400 min-h-[40px]">
                                {integration.name === 'utmify'
                                    ? 'Rastreia e envia conversões de vendas (PIX) para sua dashboard na UTMify.'
                                    : 'Integração externa.'}
                            </p>

                            <button
                                onClick={() => handleConfigure(integration)}
                                className="w-full py-2 bg-white/5 hover:bg-white/10 text-white font-medium rounded-lg border border-white/10 transition-colors flex items-center justify-center gap-2"
                            >
                                <Activity className="w-4 h-4" />
                                Configurar
                            </button>
                        </div>
                    </div>
                ))}

                {/* Placeholder for future integrations */}
                <div className="bg-card/50 border border-white/5 rounded-xl p-6 flex flex-col items-center justify-center text-center opacity-50 hover:opacity-75 transition-opacity border-dashed">
                    <div className="w-12 h-12 rounded-full bg-white/5 flex items-center justify-center mb-4">
                        <Globe className="w-6 h-6 text-gray-500" />
                    </div>
                    <h3 className="text-lg font-bold text-gray-300">Em breve</h3>
                    <p className="text-sm text-gray-500 mt-2">Facebook CAPI, Google Ads, e mais.</p>
                </div>
            </div>

            {/* CONFIGURATION MODAL */}
            {configuring && (
                <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/80 backdrop-blur-sm animate-fade-in">
                    <div className="w-full max-w-lg bg-[#1a1d24] border border-white/10 rounded-xl shadow-2xl">
                        <div className="flex items-center justify-between p-6 border-b border-white/10">
                            <div className="flex items-center gap-3">
                                <Webhook className="w-6 h-6 text-primary" />
                                <h2 className="text-xl font-bold text-white capitalize">Configurar {integrations.find(i => i.id === configuring)?.name}</h2>
                            </div>
                            <button onClick={() => setConfiguring(null)} className="text-gray-400 hover:text-white transition-colors">
                                <AlertCircle className="w-6 h-6 rotate-45" />
                            </button>
                        </div>

                        <div className="p-6 space-y-6">

                            {/* Enable Toggle */}
                            <div className="flex items-center justify-between bg-white/5 p-4 rounded-lg border border-white/10">
                                <div>
                                    <label className="text-white font-bold block">Status da Integração</label>
                                    <p className="text-xs text-gray-400">Ative para começar a enviar eventos.</p>
                                </div>
                                <label className="relative inline-flex items-center cursor-pointer">
                                    <input
                                        type="checkbox"
                                        className="sr-only peer"
                                        checked={formData.enabled}
                                        onChange={(e) => setFormData({ ...formData, enabled: e.target.checked })}
                                    />
                                    <div className="w-11 h-6 bg-gray-700 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-primary/20 rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-primary"></div>
                                </label>
                            </div>

                            {/* API Key */}
                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2 flex items-center gap-2">
                                    <Key className="w-4 h-4 text-primary" />
                                    API Key / Token
                                </label>
                                <input
                                    type="password" // hide key
                                    value={formData.api_key}
                                    onChange={(e) => setFormData({ ...formData, api_key: e.target.value })}
                                    className="w-full bg-black/50 border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary font-mono text-sm"
                                    placeholder="Digite sua chave de API aqui..."
                                />
                            </div>

                            {/* Event Name */}
                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2 flex items-center gap-2">
                                    <Activity className="w-4 h-4 text-primary" />
                                    Nome do Evento
                                </label>
                                <input
                                    type="text"
                                    value={formData.event_name}
                                    onChange={(e) => setFormData({ ...formData, event_name: e.target.value })}
                                    className="w-full bg-black/50 border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary"
                                    placeholder="Ex: purchase"
                                />
                                <p className="text-xs text-gray-500 mt-1">Geralmente "purchase" ou "conversion".</p>
                            </div>

                            {/* Environment */}
                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2 flex items-center gap-2">
                                    <Globe className="w-4 h-4 text-primary" />
                                    Ambiente
                                </label>
                                <select
                                    value={formData.environment}
                                    onChange={(e) => setFormData({ ...formData, environment: e.target.value })}
                                    className="w-full bg-black/50 border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary"
                                >
                                    <option value="production">Produção (Enviar dados reais)</option>
                                    <option value="sandbox">Sandbox (Teste)</option>
                                </select>
                            </div>

                            {/* Enabled Events */}
                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2 flex items-center gap-2">
                                    <Activity className="w-4 h-4 text-primary" />
                                    Eventos para Enviar
                                </label>
                                <div className="grid grid-cols-1 gap-2 bg-black/50 border border-white/10 rounded-lg p-3">
                                    {[
                                        { id: 'lead_created', label: 'Lead Criado (Cadastro)' },
                                        { id: 'pix_created', label: 'Pix Gerado' },
                                        { id: 'pix_pending', label: 'Pix Pendente' },
                                        { id: 'purchase', label: 'Compra Aprovada (Pago)' },
                                        { id: 'subscription_active', label: 'Assinatura Ativada' }
                                    ].map((evt) => (
                                        <label key={evt.id} className="flex items-center gap-3 cursor-pointer p-2 hover:bg-white/5 rounded transition-colors">
                                            <div className="relative flex items-center">
                                                <input
                                                    type="checkbox"
                                                    checked={formData.enabled_events?.includes(evt.id)}
                                                    onChange={(e) => {
                                                        const current = formData.enabled_events || []
                                                        if (e.target.checked) {
                                                            setFormData({ ...formData, enabled_events: [...current, evt.id] })
                                                        } else {
                                                            setFormData({ ...formData, enabled_events: current.filter(id => id !== evt.id) })
                                                        }
                                                    }}
                                                    className="peer h-4 w-4 bg-gray-800 border-gray-600 rounded focus:ring-primary focus:ring-1 checked:bg-primary checked:border-primary appearance-none transition-all"
                                                />
                                                <CheckCircle className="w-3 h-3 text-white absolute top-0.5 left-0.5 opacity-0 peer-checked:opacity-100 pointer-events-none" />
                                            </div>
                                            <span className="text-sm text-gray-300 select-none">{evt.label}</span>
                                        </label>
                                    ))}
                                </div>
                                <p className="text-xs text-gray-500 mt-2">Selecione quais etapas do funil você deseja rastrear.</p>
                            </div>

                        </div>

                        <div className="flex items-center gap-3 p-6 border-t border-white/10 bg-[#0f1014]/50 rounded-b-xl">
                            <button
                                onClick={() => setConfiguring(null)}
                                className="flex-1 py-3 text-sm text-white hover:bg-white/5 rounded-lg border border-white/10 transition-colors"
                            >
                                Cancelar
                            </button>
                            <button
                                onClick={handleSave}
                                disabled={saving}
                                className="flex-1 py-3 text-sm bg-primary hover:bg-primary/90 text-white font-bold rounded-lg transition-colors flex items-center justify-center gap-2 disabled:opacity-50"
                            >
                                {saving ? <Loader2 className="w-5 h-5 animate-spin" /> : <><Save className="w-4 h-4" /> Salvar Configuração</>}
                            </button>
                        </div>
                    </div>
                </div>
            )}
        </div>
    )
}
