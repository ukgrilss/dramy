import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import DataTable from '@/components/admin/DataTable'
import { Plus, Edit, Trash2, Star, Lock, X, Save, Loader2, Eye, EyeOff } from 'lucide-react'

export default function ContentManagement() {
    const [activeTab, setActiveTab] = useState('manage') // 'add' or 'manage'
    const [content, setContent] = useState([])
    const [categories, setCategories] = useState([])
    const [loading, setLoading] = useState(true)
    const [saving, setSaving] = useState(false)

    // Form state
    const [formData, setFormData] = useState({
        tipo: 'Filme',
        titulo: '',
        descricao: '',
        category_id: '',
        capa: '',
        banner: '',
        video_url: '',
        premium: false,
        featured: false,
        ano: new Date().getFullYear(),
        nota: '',
        duracao: '',
        categoria: ''
    })

    // Edit modal
    const [editingContent, setEditingContent] = useState(null)
    const [showEditModal, setShowEditModal] = useState(false)

    useEffect(() => {
        fetchContent()
        fetchCategories()
    }, [])

    const fetchCategories = async () => {
        try {
            const { data, error } = await supabase
                .from('categories')
                .select('*')
                .order('name')

            if (error) throw error
            setCategories(data || [])
        } catch (error) {
            console.error('Error fetching categories:', error)
        }
    }

    const fetchContent = async () => {
        try {
            let allData = []
            let page = 0
            const pageSize = 1000
            let hasMore = true

            while (hasMore) {
                const { data, error } = await supabase
                    .from('filmes')
                    .select('*')
                    .range(page * pageSize, (page + 1) * pageSize - 1)
                    .order('created_at', { ascending: false })

                if (error) throw error

                if (data.length > 0) {
                    allData = [...allData, ...data]
                    page++
                    if (data.length < pageSize) hasMore = false
                } else {
                    hasMore = false
                }
            }

            // Map DB columns to UI state
            // Filmes table uses: titulo, descricao, capa, banner_url, video_url, categoria, ano, nota, duracao, premium, featured
            const mappedContent = (allData || []).map(item => ({
                id: item.id,
                titulo: item.titulo,
                descricao: item.descricao,
                capa: item.capa,
                banner: item.banner_url || item.capa,
                video_url: item.video_url,
                category_id: item.category_id,
                categoria: item.categoria || 'Geral',
                ano: item.ano,
                nota: item.nota,
                duracao: item.duracao, // Make sure columns exist
                premium: item.premium || false,
                featured: item.featured || false
            }))

            setContent(mappedContent)
        } catch (error) {
            console.error('Error fetching content:', error)
        } finally {
            setLoading(false)
        }
    }

    const handleInputChange = (e) => {
        const { name, value, type, checked } = e.target
        setFormData(prev => ({
            ...prev,
            [name]: type === 'checkbox' ? checked : value
        }))
    }

    const validateForm = () => {
        if (!formData.titulo.trim()) {
            alert('Título é obrigatório')
            return false
        }
        if (!formData.descricao.trim()) {
            alert('Descrição é obrigatória')
            return false
        }
        if (!formData.video_url.trim()) {
            alert('URL do vídeo é obrigatória')
            return false
        }
        if (!formData.categoria.trim()) {
            alert('Categoria é obrigatória')
            return false
        }
        return true
    }

    const handleSubmit = async (e) => {
        e.preventDefault()

        if (!validateForm()) return

        setSaving(true)
        try {
            const { error } = await supabase
                .from('filmes')
                .insert([{
                    titulo: formData.titulo,
                    descricao: formData.descricao,
                    categoria: formData.categoria,
                    capa: formData.capa || 'https://via.placeholder.com/300x450',
                    banner_url: formData.banner || formData.capa,
                    video_url: formData.video_url,
                    premium: formData.premium,
                    featured: formData.featured,
                    ano: formData.ano,
                    nota: formData.nota,
                    duracao: formData.duracao
                    // video_provider: 'custom' or 'bunny' could be set here
                }])

            if (error) throw error

            alert('Conteúdo adicionado com sucesso!')

            // Reset form
            setFormData({
                tipo: 'Filme',
                titulo: '',
                descricao: '',
                category_id: '',
                capa: '',
                banner: '',
                video_url: '',
                premium: false,
                featured: false,
                ano: new Date().getFullYear(),
                nota: '',
                duracao: '',
                categoria: ''
            })

            fetchContent()
            setActiveTab('manage')
        } catch (error) {
            console.error('Error adding content:', error)
            alert('Erro ao adicionar conteúdo: ' + error.message)
        } finally {
            setSaving(false)
        }
    }

    const handleEdit = (item) => {
        setEditingContent(item)
        setShowEditModal(true)
    }

    const handleUpdate = async () => {
        if (!editingContent) return

        setSaving(true)
        try {
            const { error } = await supabase
                .from('filmes')
                .update({
                    titulo: editingContent.titulo,
                    descricao: editingContent.descricao,
                    categoria: editingContent.categoria,
                    capa: editingContent.capa,
                    banner_url: editingContent.banner,
                    video_url: editingContent.video_url,
                    premium: editingContent.premium,
                    featured: editingContent.featured,
                    ano: editingContent.ano,
                    nota: editingContent.nota,
                    duracao: editingContent.duracao
                })
                .eq('id', editingContent.id)

            if (error) throw error

            alert('Conteúdo atualizado com sucesso!')
            setShowEditModal(false)
            setEditingContent(null)
            fetchContent()
        } catch (error) {
            console.error('Error updating content:', error)
            alert('Erro ao atualizar conteúdo: ' + error.message)
        } finally {
            setSaving(false)
        }
    }

    const toggleFeatured = async (id, currentValue) => {
        try {
            const { error } = await supabase
                .from('filmes')
                .update({ featured: !currentValue })
                .eq('id', id)

            if (error) throw error
            fetchContent()
        } catch (error) {
            console.error('Error toggling featured:', error)
            alert('Erro ao atualizar destaque')
        }
    }

    const togglePremium = async (id, currentValue) => {
        try {
            const { error } = await supabase
                .from('filmes')
                .update({ premium: !currentValue })
                .eq('id', id)

            if (error) throw error
            fetchContent()
        } catch (error) {
            console.error('Error toggling premium:', error)
            alert('Erro ao atualizar premium')
        }
    }

    const deleteContent = async (id) => {
        if (!confirm('Tem certeza que deseja excluir este conteúdo?')) return

        try {
            const { error } = await supabase
                .from('filmes')
                .delete()
                .eq('id', id)

            if (error) throw error
            fetchContent()
            alert('Conteúdo excluído com sucesso!')
        } catch (error) {
            console.error('Error deleting content:', error)
            alert('Erro ao excluir conteúdo')
        }
    }

    const columns = [
        {
            header: 'Título',
            accessor: 'titulo',
            render: (value, row) => (
                <div className="flex items-center gap-3">
                    <img src={row.capa} alt={value} className="w-12 h-16 object-cover rounded" />
                    <div>
                        <p className="font-medium text-white">{value}</p>
                        <p className="text-xs text-gray-500">{row.categoria}</p>
                    </div>
                </div>
            )
        },
        {
            header: 'Ano',
            accessor: 'ano',
        },
        {
            header: 'Nota',
            accessor: 'nota',
            render: (value) => (
                <span className="text-yellow-400">★ {value || 'N/A'}</span>
            )
        },
        {
            header: 'Status',
            accessor: 'premium',
            render: (value, row) => (
                <div className="flex gap-2">
                    <button
                        onClick={(e) => {
                            e.stopPropagation()
                            toggleFeatured(row.id, row.featured)
                        }}
                        className={`p-1 rounded ${row.featured ? 'text-yellow-400' : 'text-gray-600'}`}
                        title="Destaque"
                    >
                        <Star className="w-4 h-4" fill={row.featured ? 'currentColor' : 'none'} />
                    </button>
                    <button
                        onClick={(e) => {
                            e.stopPropagation()
                            togglePremium(row.id, value)
                        }}
                        className={`p-1 rounded ${value ? 'text-primary' : 'text-gray-600'}`}
                        title="Premium"
                    >
                        <Lock className="w-4 h-4" />
                    </button>
                </div>
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
                        className="p-2 hover:bg-white/10 rounded text-blue-400"
                        title="Editar"
                    >
                        <Edit className="w-4 h-4" />
                    </button>
                    <button
                        onClick={(e) => {
                            e.stopPropagation()
                            deleteContent(value)
                        }}
                        className="p-2 hover:bg-white/10 rounded text-red-400"
                        title="Excluir"
                    >
                        <Trash2 className="w-4 h-4" />
                    </button>
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
            {/* Header with Tabs */}
            <div className="flex items-center justify-between">
                <div>
                    <h1 className="text-3xl font-black text-white mb-2">Gerenciamento de Conteúdo</h1>
                    <p className="text-gray-400">{content.length} itens cadastrados</p>
                </div>
            </div>

            {/* Tabs */}
            <div className="flex gap-2 border-b border-white/10">
                <button
                    onClick={() => setActiveTab('manage')}
                    className={`px-6 py-3 font-bold transition-all ${activeTab === 'manage'
                        ? 'text-primary border-b-2 border-primary'
                        : 'text-gray-400 hover:text-white'
                        }`}
                >
                    Gerenciar Conteúdo
                </button>
                <button
                    onClick={() => setActiveTab('add')}
                    className={`px-6 py-3 font-bold transition-all ${activeTab === 'add'
                        ? 'text-primary border-b-2 border-primary'
                        : 'text-gray-400 hover:text-white'
                        }`}
                >
                    <Plus className="w-4 h-4 inline mr-2" />
                    Adicionar Conteúdo
                </button>
            </div>

            {/* Tab Content */}
            {activeTab === 'manage' ? (
                <DataTable
                    columns={columns}
                    data={content}
                    searchPlaceholder="Buscar por título, categoria..."
                />
            ) : (
                <form onSubmit={handleSubmit} className="bg-card border border-white/10 rounded-xl p-6 space-y-6">
                    {/* Tipo de Conteúdo */}
                    <div>
                        <label className="block text-sm font-bold text-gray-300 mb-2">Tipo de Conteúdo</label>
                        <select
                            name="tipo"
                            value={formData.tipo}
                            onChange={handleInputChange}
                            className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary focus:ring-2 focus:ring-primary/20"
                        >
                            <option value="Filme">Filme</option>
                            <option value="Série">Série</option>
                            <option value="Dorama">Dorama</option>
                        </select>
                    </div>

                    {/* Grid de campos */}
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                        {/* Título */}
                        <div>
                            <label className="block text-sm font-bold text-gray-300 mb-2">
                                Título <span className="text-red-400">*</span>
                            </label>
                            <input
                                type="text"
                                name="titulo"
                                value={formData.titulo}
                                onChange={handleInputChange}
                                required
                                className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-primary focus:ring-2 focus:ring-primary/20"
                                placeholder="Ex: Vingadores: Ultimato"
                            />
                        </div>

                        {/* Categoria */}
                        <div>
                            <label className="block text-sm font-bold text-gray-300 mb-2">
                                Categoria <span className="text-red-400">*</span>
                            </label>
                            <input
                                type="text"
                                name="categoria"
                                value={formData.categoria}
                                onChange={handleInputChange}
                                required
                                className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-primary focus:ring-2 focus:ring-primary/20"
                                placeholder="Ex: Ação, Drama, Comédia"
                            />
                        </div>

                        {/* Ano */}
                        <div>
                            <label className="block text-sm font-bold text-gray-300 mb-2">Ano</label>
                            <input
                                type="number"
                                name="ano"
                                value={formData.ano}
                                onChange={handleInputChange}
                                className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary focus:ring-2 focus:ring-primary/20"
                            />
                        </div>

                        {/* Nota */}
                        <div>
                            <label className="block text-sm font-bold text-gray-300 mb-2">Nota (0-10)</label>
                            <input
                                type="number"
                                step="0.1"
                                min="0"
                                max="10"
                                name="nota"
                                value={formData.nota}
                                onChange={handleInputChange}
                                className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary focus:ring-2 focus:ring-primary/20"
                                placeholder="Ex: 8.5"
                            />
                        </div>

                        {/* Duração */}
                        <div>
                            <label className="block text-sm font-bold text-gray-300 mb-2">Duração</label>
                            <input
                                type="text"
                                name="duracao"
                                value={formData.duracao}
                                onChange={handleInputChange}
                                className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-primary focus:ring-2 focus:ring-primary/20"
                                placeholder="Ex: 2h 30min"
                            />
                        </div>
                    </div>

                    {/* Descrição */}
                    <div>
                        <label className="block text-sm font-bold text-gray-300 mb-2">
                            Descrição / Sinopse <span className="text-red-400">*</span>
                        </label>
                        <textarea
                            name="descricao"
                            value={formData.descricao}
                            onChange={handleInputChange}
                            required
                            rows={4}
                            className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-primary focus:ring-2 focus:ring-primary/20"
                            placeholder="Descreva o conteúdo..."
                        />
                    </div>

                    {/* URLs */}
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div>
                            <label className="block text-sm font-bold text-gray-300 mb-2">URL da Capa</label>
                            <input
                                type="url"
                                name="capa"
                                value={formData.capa}
                                onChange={handleInputChange}
                                className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-primary focus:ring-2 focus:ring-primary/20"
                                placeholder="https://..."
                            />
                        </div>

                        <div>
                            <label className="block text-sm font-bold text-gray-300 mb-2">URL do Banner</label>
                            <input
                                type="url"
                                name="banner"
                                value={formData.banner}
                                onChange={handleInputChange}
                                className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-primary focus:ring-2 focus:ring-primary/20"
                                placeholder="https://..."
                            />
                        </div>
                    </div>

                    {/* URL do Vídeo */}
                    <div>
                        <label className="block text-sm font-bold text-gray-300 mb-2">
                            URL do Vídeo <span className="text-red-400">*</span>
                        </label>
                        <input
                            type="url"
                            name="video_url"
                            value={formData.video_url}
                            onChange={handleInputChange}
                            required
                            className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-primary focus:ring-2 focus:ring-primary/20"
                            placeholder="https://..."
                        />
                    </div>

                    {/* Checkboxes */}
                    <div className="flex gap-6">
                        <label className="flex items-center gap-2 cursor-pointer">
                            <input
                                type="checkbox"
                                name="premium"
                                checked={formData.premium}
                                onChange={handleInputChange}
                                className="w-5 h-5 rounded border-white/10 bg-background text-primary focus:ring-primary focus:ring-offset-0"
                            />
                            <span className="text-white font-medium">Conteúdo Premium</span>
                        </label>

                        <label className="flex items-center gap-2 cursor-pointer">
                            <input
                                type="checkbox"
                                name="featured"
                                checked={formData.featured}
                                onChange={handleInputChange}
                                className="w-5 h-5 rounded border-white/10 bg-background text-primary focus:ring-primary focus:ring-offset-0"
                            />
                            <span className="text-white font-medium">Conteúdo em Destaque</span>
                        </label>
                    </div>

                    {/* Submit Button */}
                    <div className="flex justify-end gap-4 pt-4">
                        <button
                            type="button"
                            onClick={() => setActiveTab('manage')}
                            className="px-6 py-3 bg-white/10 hover:bg-white/20 text-white rounded-lg font-bold transition-all"
                        >
                            Cancelar
                        </button>
                        <button
                            type="submit"
                            disabled={saving}
                            className="px-6 py-3 bg-primary hover:bg-primary/90 text-white rounded-lg font-bold transition-all transform hover:scale-105 active:scale-95 disabled:opacity-50 disabled:cursor-not-allowed disabled:transform-none flex items-center gap-2"
                        >
                            {saving ? (
                                <>
                                    <Loader2 className="w-5 h-5 animate-spin" />
                                    Salvando...
                                </>
                            ) : (
                                <>
                                    <Save className="w-5 h-5" />
                                    Salvar Conteúdo
                                </>
                            )}
                        </button>
                    </div>
                </form>
            )}

            {/* Edit Modal */}
            {showEditModal && editingContent && (
                <div className="fixed inset-0 bg-black/80 backdrop-blur-sm flex items-center justify-center z-50 p-4">
                    <div className="bg-card border border-white/10 rounded-xl max-w-2xl w-full max-h-[90vh] overflow-y-auto">
                        <div className="sticky top-0 bg-card border-b border-white/10 p-6 flex items-center justify-between">
                            <h2 className="text-2xl font-bold text-white">Editar Conteúdo</h2>
                            <button
                                onClick={() => setShowEditModal(false)}
                                className="p-2 hover:bg-white/10 rounded-lg text-gray-400 hover:text-white transition-all"
                            >
                                <X className="w-6 h-6" />
                            </button>
                        </div>

                        <div className="p-6 space-y-6">
                            {/* Título */}
                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2">Título</label>
                                <input
                                    type="text"
                                    value={editingContent.titulo}
                                    onChange={(e) => setEditingContent({ ...editingContent, titulo: e.target.value })}
                                    className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary"
                                />
                            </div>

                            {/* Descrição */}
                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2">Descrição</label>
                                <textarea
                                    value={editingContent.descricao}
                                    onChange={(e) => setEditingContent({ ...editingContent, descricao: e.target.value })}
                                    rows={4}
                                    className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary"
                                />
                            </div>

                            {/* Grid */}
                            <div className="grid grid-cols-2 gap-4">
                                <div>
                                    <label className="block text-sm font-bold text-gray-300 mb-2">Categoria</label>
                                    <input
                                        type="text"
                                        value={editingContent.categoria}
                                        onChange={(e) => setEditingContent({ ...editingContent, categoria: e.target.value })}
                                        className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary"
                                    />
                                </div>

                                <div>
                                    <label className="block text-sm font-bold text-gray-300 mb-2">Ano</label>
                                    <input
                                        type="number"
                                        value={editingContent.ano}
                                        onChange={(e) => setEditingContent({ ...editingContent, ano: e.target.value })}
                                        className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary"
                                    />
                                </div>

                                <div>
                                    <label className="block text-sm font-bold text-gray-300 mb-2">Nota</label>
                                    <input
                                        type="number"
                                        step="0.1"
                                        value={editingContent.nota || ''}
                                        onChange={(e) => setEditingContent({ ...editingContent, nota: e.target.value })}
                                        className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary"
                                    />
                                </div>

                                <div>
                                    <label className="block text-sm font-bold text-gray-300 mb-2">Duração</label>
                                    <input
                                        type="text"
                                        value={editingContent.duracao || ''}
                                        onChange={(e) => setEditingContent({ ...editingContent, duracao: e.target.value })}
                                        className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary"
                                    />
                                </div>
                            </div>

                            {/* URLs */}
                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2">URL da Capa</label>
                                <input
                                    type="url"
                                    value={editingContent.capa}
                                    onChange={(e) => setEditingContent({ ...editingContent, capa: e.target.value })}
                                    className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary"
                                />
                            </div>

                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2">URL do Vídeo</label>
                                <input
                                    type="url"
                                    value={editingContent.video_url}
                                    onChange={(e) => setEditingContent({ ...editingContent, video_url: e.target.value })}
                                    className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white focus:outline-none focus:border-primary"
                                />
                            </div>

                            {/* Checkboxes */}
                            <div className="flex gap-6">
                                <label className="flex items-center gap-2 cursor-pointer">
                                    <input
                                        type="checkbox"
                                        checked={editingContent.premium}
                                        onChange={(e) => setEditingContent({ ...editingContent, premium: e.target.checked })}
                                        className="w-5 h-5 rounded border-white/10 bg-background text-primary"
                                    />
                                    <span className="text-white font-medium">Premium</span>
                                </label>

                                <label className="flex items-center gap-2 cursor-pointer">
                                    <input
                                        type="checkbox"
                                        checked={editingContent.featured}
                                        onChange={(e) => setEditingContent({ ...editingContent, featured: e.target.checked })}
                                        className="w-5 h-5 rounded border-white/10 bg-background text-primary"
                                    />
                                    <span className="text-white font-medium">Destaque</span>
                                </label>
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
                                            Salvar Alterações
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
