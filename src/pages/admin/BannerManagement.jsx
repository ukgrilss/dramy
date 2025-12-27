import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import { Plus, Edit, Trash2, Eye, EyeOff, X, Save, Loader2, MoveUp, MoveDown } from 'lucide-react'

export default function BannerManagement() {
    const [banners, setBanners] = useState([])
    const [loading, setLoading] = useState(true)
    const [showModal, setShowModal] = useState(false)
    const [editingBanner, setEditingBanner] = useState(null)
    const [saving, setSaving] = useState(false)

    const [formData, setFormData] = useState({
        titulo: '',
        imagem: '',
        link: '',
        ativo: true,
        ordem: 0
    })

    useEffect(() => {
        fetchBanners()
    }, [])

    const fetchBanners = async () => {
        try {
            const { data, error } = await supabase
                .from('banners')
                .select('*')
                .order('ordem', { ascending: true })

            if (error) throw error
            setBanners(data || [])
        } catch (error) {
            console.error('Error fetching banners:', error)
        } finally {
            setLoading(false)
        }
    }

    const validateBanner = () => {
        if (!formData.imagem || !formData.imagem.trim()) {
            alert('Imagem é obrigatória')
            return false
        }

        // Validate URL
        try {
            new URL(formData.imagem)
        } catch {
            alert('URL da imagem inválida')
            return false
        }

        if (formData.link && formData.link.trim()) {
            try {
                new URL(formData.link)
            } catch {
                alert('URL do link inválida')
                return false
            }
        }

        return true
    }

    const handleSubmit = async (e) => {
        e.preventDefault()
        if (!validateBanner()) return

        setSaving(true)
        try {
            if (editingBanner) {
                // Update
                const { error } = await supabase
                    .from('banners')
                    .update({
                        titulo: formData.titulo || null,
                        imagem: formData.imagem,
                        link: formData.link || null,
                        ativo: formData.ativo,
                        ordem: formData.ordem
                    })
                    .eq('id', editingBanner.id)

                if (error) throw error
                alert('Banner atualizado com sucesso!')
            } else {
                // Create
                const { error } = await supabase
                    .from('banners')
                    .insert([{
                        titulo: formData.titulo || null,
                        imagem: formData.imagem,
                        link: formData.link || null,
                        ativo: formData.ativo,
                        ordem: banners.length
                    }])

                if (error) throw error
                alert('Banner criado com sucesso!')
            }

            resetForm()
            setShowModal(false)
            fetchBanners()
        } catch (error) {
            console.error('Error saving banner:', error)
            alert('Erro ao salvar banner: ' + error.message)
        } finally {
            setSaving(false)
        }
    }

    const handleEdit = (banner) => {
        setEditingBanner(banner)
        setFormData({
            titulo: banner.titulo || '',
            imagem: banner.imagem,
            link: banner.link || '',
            ativo: banner.ativo,
            ordem: banner.ordem
        })
        setShowModal(true)
    }

    const handleDelete = async (id) => {
        if (!confirm('Tem certeza que deseja excluir este banner?')) return

        try {
            const { error } = await supabase
                .from('banners')
                .delete()
                .eq('id', id)

            if (error) throw error
            alert('Banner excluído com sucesso!')
            fetchBanners()
        } catch (error) {
            console.error('Error deleting banner:', error)
            alert('Erro ao excluir banner: ' + error.message)
        }
    }

    const toggleActive = async (id, currentValue) => {
        try {
            const { error } = await supabase
                .from('banners')
                .update({ ativo: !currentValue })
                .eq('id', id)

            if (error) throw error
            fetchBanners()
        } catch (error) {
            console.error('Error toggling banner:', error)
            alert('Erro ao atualizar banner')
        }
    }

    const moveUp = async (banner, index) => {
        if (index === 0) return

        const prevBanner = banners[index - 1]

        try {
            await supabase.from('banners').update({ ordem: banner.ordem }).eq('id', prevBanner.id)
            await supabase.from('banners').update({ ordem: prevBanner.ordem }).eq('id', banner.id)
            fetchBanners()
        } catch (error) {
            console.error('Error moving banner:', error)
        }
    }

    const moveDown = async (banner, index) => {
        if (index === banners.length - 1) return

        const nextBanner = banners[index + 1]

        try {
            await supabase.from('banners').update({ ordem: banner.ordem }).eq('id', nextBanner.id)
            await supabase.from('banners').update({ ordem: nextBanner.ordem }).eq('id', banner.id)
            fetchBanners()
        } catch (error) {
            console.error('Error moving banner:', error)
        }
    }

    const resetForm = () => {
        setFormData({
            titulo: '',
            imagem: '',
            link: '',
            ativo: true,
            ordem: 0
        })
        setEditingBanner(null)
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
                    <h1 className="text-3xl font-black text-white mb-2">Gerenciamento de Banners</h1>
                    <p className="text-gray-400">{banners.length} banners cadastrados</p>
                </div>
                <button
                    onClick={() => {
                        resetForm()
                        setShowModal(true)
                    }}
                    className="flex items-center gap-2 bg-primary hover:bg-primary/90 text-white px-6 py-3 rounded-lg font-bold transition-all transform hover:scale-105"
                >
                    <Plus className="w-5 h-5" />
                    Novo Banner
                </button>
            </div>

            {/* Banners Grid */}
            <div className="grid grid-cols-1 gap-4">
                {banners.length === 0 ? (
                    <div className="bg-card border border-white/10 rounded-xl p-12 text-center">
                        <p className="text-gray-500">Nenhum banner cadastrado</p>
                    </div>
                ) : (
                    banners.map((banner, index) => (
                        <div
                            key={banner.id}
                            className="bg-card border border-white/10 rounded-xl p-4 flex items-center gap-4"
                        >
                            {/* Image Preview */}
                            <img
                                src={banner.imagem}
                                alt={banner.titulo || 'Banner'}
                                className="w-32 h-20 object-cover rounded-lg"
                            />

                            {/* Info */}
                            <div className="flex-1">
                                <h3 className="text-white font-bold">{banner.titulo || 'Sem título'}</h3>
                                <p className="text-xs text-gray-500 truncate">{banner.imagem}</p>
                                {banner.link && (
                                    <p className="text-xs text-primary truncate">Link: {banner.link}</p>
                                )}
                            </div>

                            {/* Status */}
                            <div>
                                <button
                                    onClick={() => toggleActive(banner.id, banner.ativo)}
                                    className={`flex items-center gap-1 px-3 py-1 rounded text-xs font-bold ${banner.ativo
                                            ? 'bg-green-500/20 text-green-400'
                                            : 'bg-gray-500/20 text-gray-400'
                                        }`}
                                >
                                    {banner.ativo ? <Eye className="w-3 h-3" /> : <EyeOff className="w-3 h-3" />}
                                    {banner.ativo ? 'Ativo' : 'Inativo'}
                                </button>
                            </div>

                            {/* Order Controls */}
                            <div className="flex flex-col gap-1">
                                <button
                                    onClick={() => moveUp(banner, index)}
                                    disabled={index === 0}
                                    className="p-1 hover:bg-white/10 rounded text-gray-400 hover:text-white disabled:opacity-30 disabled:cursor-not-allowed"
                                >
                                    <MoveUp className="w-4 h-4" />
                                </button>
                                <button
                                    onClick={() => moveDown(banner, index)}
                                    disabled={index === banners.length - 1}
                                    className="p-1 hover:bg-white/10 rounded text-gray-400 hover:text-white disabled:opacity-30 disabled:cursor-not-allowed"
                                >
                                    <MoveDown className="w-4 h-4" />
                                </button>
                            </div>

                            {/* Actions */}
                            <div className="flex gap-2">
                                <button
                                    onClick={() => handleEdit(banner)}
                                    className="p-2 hover:bg-white/10 rounded text-blue-400"
                                >
                                    <Edit className="w-4 h-4" />
                                </button>
                                <button
                                    onClick={() => handleDelete(banner.id)}
                                    className="p-2 hover:bg-white/10 rounded text-red-400"
                                >
                                    <Trash2 className="w-4 h-4" />
                                </button>
                            </div>
                        </div>
                    ))
                )}
            </div>

            {/* Modal */}
            {showModal && (
                <div className="fixed inset-0 bg-black/80 backdrop-blur-sm flex items-center justify-center z-50 p-4">
                    <div className="bg-card border border-white/10 rounded-xl max-w-2xl w-full">
                        <div className="border-b border-white/10 p-6 flex items-center justify-between">
                            <h2 className="text-2xl font-bold text-white">
                                {editingBanner ? 'Editar Banner' : 'Novo Banner'}
                            </h2>
                            <button
                                onClick={() => {
                                    setShowModal(false)
                                    resetForm()
                                }}
                                className="p-2 hover:bg-white/10 rounded-lg text-gray-400 hover:text-white transition-all"
                            >
                                <X className="w-6 h-6" />
                            </button>
                        </div>

                        <form onSubmit={handleSubmit} className="p-6 space-y-4">
                            {/* Título */}
                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2">
                                    Título (opcional)
                                </label>
                                <input
                                    type="text"
                                    value={formData.titulo}
                                    onChange={(e) => setFormData({ ...formData, titulo: e.target.value })}
                                    className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-primary"
                                    placeholder="Ex: Banner Promocional"
                                />
                            </div>

                            {/* Imagem */}
                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2">
                                    URL da Imagem <span className="text-red-400">*</span>
                                </label>
                                <input
                                    type="url"
                                    value={formData.imagem}
                                    onChange={(e) => setFormData({ ...formData, imagem: e.target.value })}
                                    required
                                    className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-primary"
                                    placeholder="https://..."
                                />
                                {formData.imagem && (
                                    <img
                                        src={formData.imagem}
                                        alt="Preview"
                                        className="mt-2 w-full h-40 object-cover rounded-lg"
                                        onError={(e) => e.target.style.display = 'none'}
                                    />
                                )}
                            </div>

                            {/* Link */}
                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2">
                                    Link (opcional)
                                </label>
                                <input
                                    type="url"
                                    value={formData.link}
                                    onChange={(e) => setFormData({ ...formData, link: e.target.value })}
                                    className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-primary"
                                    placeholder="https://..."
                                />
                            </div>

                            {/* Ativo */}
                            <div>
                                <label className="flex items-center gap-2 cursor-pointer">
                                    <input
                                        type="checkbox"
                                        checked={formData.ativo}
                                        onChange={(e) => setFormData({ ...formData, ativo: e.target.checked })}
                                        className="w-5 h-5 rounded border-white/10 bg-background text-primary"
                                    />
                                    <span className="text-white font-medium">Banner Ativo</span>
                                </label>
                                <p className="text-xs text-gray-500 mt-1">Apenas banners ativos aparecem no site</p>
                            </div>

                            {/* Actions */}
                            <div className="flex justify-end gap-4 pt-4">
                                <button
                                    type="button"
                                    onClick={() => {
                                        setShowModal(false)
                                        resetForm()
                                    }}
                                    className="px-6 py-3 bg-white/10 hover:bg-white/20 text-white rounded-lg font-bold transition-all"
                                >
                                    Cancelar
                                </button>
                                <button
                                    type="submit"
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
                        </form>
                    </div>
                </div>
            )}
        </div>
    )
}
