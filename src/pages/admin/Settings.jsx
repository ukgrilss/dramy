import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import { Save, Loader2, Settings as SettingsIcon, AlertCircle } from 'lucide-react'

export default function Settings() {
    const [settings, setSettings] = useState({})
    const [loading, setLoading] = useState(true)
    const [saving, setSaving] = useState(false)
    const [hasChanges, setHasChanges] = useState(false)

    useEffect(() => {
        fetchSettings()
    }, [])

    const fetchSettings = async () => {
        try {
            const { data, error } = await supabase
                .from('settings')
                .select('*')

            if (error) throw error

            // Convert array to object for easier access
            const settingsObj = {}
            data.forEach(setting => {
                settingsObj[setting.key] = setting.value
            })

            setSettings(settingsObj)
        } catch (error) {
            console.error('Error fetching settings:', error)
            alert('Erro ao carregar configurações: ' + error.message)
        } finally {
            setLoading(false)
        }
    }

    const handleChange = (key, value) => {
        setSettings(prev => ({
            ...prev,
            [key]: value
        }))
        setHasChanges(true)
    }

    const handleSave = async () => {
        setSaving(true)
        try {
            // Update each setting
            const updates = Object.entries(settings).map(([key, value]) =>
                supabase
                    .from('settings')
                    .update({
                        value: value,
                        updated_at: new Date().toISOString()
                    })
                    .eq('key', key)
            )

            await Promise.all(updates)

            alert('Configurações salvas com sucesso!')
            setHasChanges(false)
            fetchSettings()
        } catch (error) {
            console.error('Error saving settings:', error)
            alert('Erro ao salvar configurações: ' + error.message)
        } finally {
            setSaving(false)
        }
    }

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
            <div className="flex items-center justify-between">
                <div>
                    <h1 className="text-3xl font-black text-white mb-2">Configurações da Plataforma</h1>
                    <p className="text-gray-400">Configurações globais do sistema</p>
                </div>
                {hasChanges && (
                    <button
                        onClick={handleSave}
                        disabled={saving}
                        className="flex items-center gap-2 bg-primary hover:bg-primary/90 text-white px-6 py-3 rounded-lg font-bold transition-all transform hover:scale-105 disabled:opacity-50"
                    >
                        {saving ? (
                            <>
                                <Loader2 className="w-5 h-5 animate-spin" />
                                Salvando...
                            </>
                        ) : (
                            <>
                                <Save className="w-5 h-5" />
                                Salvar Alterações
                            </>
                        )}
                    </button>
                )}
            </div>

            {/* Warning */}
            {hasChanges && (
                <div className="bg-yellow-500/10 border border-yellow-500/20 rounded-xl p-4 flex items-start gap-3">
                    <AlertCircle className="w-5 h-5 text-yellow-400 flex-shrink-0 mt-0.5" />
                    <div>
                        <p className="text-yellow-400 font-bold">Alterações não salvas</p>
                        <p className="text-sm text-yellow-400/80">Clique em "Salvar Alterações" para aplicar as mudanças</p>
                    </div>
                </div>
            )}

            {/* Settings Sections */}
            <div className="space-y-6">
                {/* General Settings */}
                <div className="bg-card border border-white/10 rounded-xl p-6">
                    <div className="flex items-center gap-2 mb-6">
                        <SettingsIcon className="w-5 h-5 text-primary" />
                        <h2 className="text-xl font-bold text-white">Configurações Gerais</h2>
                    </div>

                    <div className="space-y-4">
                        {/* Platform Name */}
                        <div>
                            <label className="block text-sm font-bold text-gray-300 mb-2">
                                Nome da Plataforma
                            </label>
                            <input
                                type="text"
                                value={settings.platform_name || ''}
                                onChange={(e) => handleChange('platform_name', e.target.value)}
                                className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary"
                            />
                            <p className="text-xs text-gray-500 mt-1">Nome exibido no site e emails</p>
                        </div>

                        {/* Support Email */}
                        <div>
                            <label className="block text-sm font-bold text-gray-300 mb-2">
                                Email de Suporte
                            </label>
                            <input
                                type="email"
                                value={settings.support_email || ''}
                                onChange={(e) => handleChange('support_email', e.target.value)}
                                className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary"
                            />
                            <p className="text-xs text-gray-500 mt-1">Email para contato de suporte</p>
                        </div>

                        {/* Primary Color */}
                        <div>
                            <label className="block text-sm font-bold text-gray-300 mb-2">
                                Cor Primária
                            </label>
                            <div className="flex gap-3">
                                <input
                                    type="color"
                                    value={settings.primary_color || '#961283'}
                                    onChange={(e) => handleChange('primary_color', e.target.value)}
                                    className="w-16 h-12 rounded-lg cursor-pointer"
                                />
                                <input
                                    type="text"
                                    value={settings.primary_color || '#961283'}
                                    onChange={(e) => handleChange('primary_color', e.target.value)}
                                    className="flex-1 bg-background border border-white/10 rounded-lg px-4 py-3 text-white font-mono focus:outline-none focus:border-primary"
                                />
                            </div>
                            <p className="text-xs text-gray-500 mt-1">Cor principal da interface</p>
                        </div>
                    </div>
                </div>

                {/* Access Control */}
                <div className="bg-card border border-white/10 rounded-xl p-6">
                    <h2 className="text-xl font-bold text-white mb-6">Controle de Acesso</h2>

                    <div className="space-y-4">
                        {/* Maintenance Mode */}
                        <div className="flex items-center justify-between p-4 bg-white/5 rounded-lg">
                            <div>
                                <p className="font-bold text-white">Modo Manutenção</p>
                                <p className="text-sm text-gray-400">Desabilita acesso ao site para usuários comuns</p>
                            </div>
                            <label className="relative inline-flex items-center cursor-pointer">
                                <input
                                    type="checkbox"
                                    checked={settings.maintenance_mode === 'true'}
                                    onChange={(e) => handleChange('maintenance_mode', e.target.checked ? 'true' : 'false')}
                                    className="sr-only peer"
                                />
                                <div className="w-11 h-6 bg-gray-600 peer-focus:outline-none peer-focus:ring-2 peer-focus:ring-primary rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:left-[2px] after:bg-white after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-primary"></div>
                            </label>
                        </div>

                        {/* Allow Registration */}
                        <div className="flex items-center justify-between p-4 bg-white/5 rounded-lg">
                            <div>
                                <p className="font-bold text-white">Permitir Cadastros</p>
                                <p className="text-sm text-gray-400">Permite que novos usuários se cadastrem</p>
                            </div>
                            <label className="relative inline-flex items-center cursor-pointer">
                                <input
                                    type="checkbox"
                                    checked={settings.allow_registration === 'true'}
                                    onChange={(e) => handleChange('allow_registration', e.target.checked ? 'true' : 'false')}
                                    className="sr-only peer"
                                />
                                <div className="w-11 h-6 bg-gray-600 peer-focus:outline-none peer-focus:ring-2 peer-focus:ring-primary rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:left-[2px] after:bg-white after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-primary"></div>
                            </label>
                        </div>
                    </div>
                </div>

                {/* Subscription Settings */}
                <div className="bg-card border border-white/10 rounded-xl p-6">
                    <h2 className="text-xl font-bold text-white mb-6">Configurações de Assinatura</h2>

                    <div className="space-y-4">
                        {/* Max Devices */}
                        <div>
                            <label className="block text-sm font-bold text-gray-300 mb-2">
                                Máximo de Dispositivos por Conta
                            </label>
                            <input
                                type="number"
                                min="1"
                                max="10"
                                value={settings.max_devices || '3'}
                                onChange={(e) => handleChange('max_devices', e.target.value)}
                                className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary"
                            />
                            <p className="text-xs text-gray-500 mt-1">Número máximo de dispositivos simultâneos</p>
                        </div>
                    </div>
                </div>
            </div>

            {/* Save Button (Bottom) */}
            {hasChanges && (
                <div className="flex justify-end">
                    <button
                        onClick={handleSave}
                        disabled={saving}
                        className="flex items-center gap-2 bg-primary hover:bg-primary/90 text-white px-8 py-4 rounded-lg font-bold transition-all transform hover:scale-105 disabled:opacity-50"
                    >
                        {saving ? (
                            <>
                                <Loader2 className="w-5 h-5 animate-spin" />
                                Salvando...
                            </>
                        ) : (
                            <>
                                <Save className="w-5 h-5" />
                                Salvar Todas as Alterações
                            </>
                        )}
                    </button>
                </div>
            )}
        </div>
    )
}
