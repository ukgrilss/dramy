import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import { Plus, Edit, Trash2, X, Save, Loader2 } from 'lucide-react'

export default function CategoryManagement() {
    const [categories, setCategories] = useState([])
    const [loading, setLoading] = useState(true)
    const [showModal, setShowModal] = useState(false)
    const [editingCategory, setEditingCategory] = useState(null)
    const [saving, setSaving] = useState(false)

    const [formData, setFormData] = useState({
        name: '',
        slug: '',
        icon: ''
    })

    useEffect(() => {
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
        } finally {
            setLoading(false)
        }
    }

    const generateSlug = (name) => {
        return name
            .toLowerCase()
            .normalize('NFD')
            .replace(/[\u0300-\u036f]/g, '') // Remove accents
            .replace(/[^a-z0-9]+/g, '-') // Replace non-alphanumeric with -
            .replace(/^-+|-+$/g, '') // Remove leading/trailing -
    }

    const handleNameChange = (name) => {
        setFormData({
            ...formData,
            name,
            slug: generateSlug(name)
        })
    }

    const validateCategory = async () => {
        if (!formData.name || !formData.name.trim()) {
            alert('Nome é obrigatório')
            return false
        }

        if (!formData.slug || !formData.slug.trim()) {
            alert('Slug é obrigatório')
            return false
        }

        // Check if slug is unique
        const { data, error } = await supabase
            .from('categories')
            .select('id')
            .eq('slug', formData.slug)
            .single()

        if (data && (!editingCategory || data.id !== editingCategory.id)) {
            alert('Já existe uma categoria com este slug. Use outro nome.')
            return false
        }

        return true
    }

    const checkCategoryInUse = async (categoryId) => {
        // Check if category is linked to any content
        const { count } = await supabase
            .from('series_categories')
            .select('*', { count: 'exact', head: true })
            .eq('category_id', categoryId)

        return count > 0
    }

    const handleSubmit = async (e) => {
        e.preventDefault()
        if (!(await validateCategory())) return

        setSaving(true)
        try {
            if (editingCategory) {
                // Update
                const { error } = await supabase
                    .from('categories')
                    .update({
                        name: formData.name.trim(),
                        slug: formData.slug.trim(),
                        icon: formData.icon.trim() || null
                    })
                    .eq('id', editingCategory.id)

                if (error) throw error
                alert('Categoria atualizada com sucesso!')
            } else {
                // Create
                const { error } = await supabase
                    .from('categories')
                    .insert([{
                        name: formData.name.trim(),
                        slug: formData.slug.trim(),
                        icon: formData.icon.trim() || null
                    }])

                if (error) throw error
                alert('Categoria criada com sucesso!')
            }

            resetForm()
            setShowModal(false)
            fetchCategories()
        } catch (error) {
            console.error('Error saving category:', error)
            alert('Erro ao salvar categoria: ' + error.message)
        } finally {
            setSaving(false)
        }
    }

    const handleEdit = (category) => {
        setEditingCategory(category)
        setFormData({
            name: category.name,
            slug: category.slug,
            icon: category.icon || ''
        })
        setShowModal(true)
    }

    const handleDelete = async (category) => {
        // Check if category is in use
        const inUse = await checkCategoryInUse(category.id)

        if (inUse) {
            alert('Esta categoria está vinculada a conteúdos e não pode ser excluída. Remova os vínculos primeiro.')
            return
        }

        if (!confirm(`Tem certeza que deseja excluir a categoria "${category.name}"?`)) return

        try {
            const { error } = await supabase
                .from('categories')
                .delete()
                .eq('id', category.id)

            if (error) throw error
            alert('Categoria excluída com sucesso!')
            fetchCategories()
        } catch (error) {
            console.error('Error deleting category:', error)
            alert('Erro ao excluir categoria: ' + error.message)
        }
    }

    const resetForm = () => {
        setFormData({
            name: '',
            slug: '',
            icon: ''
        })
        setEditingCategory(null)
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
                    <h1 className="text-3xl font-black text-white mb-2">Gerenciamento de Categorias</h1>
                    <p className="text-gray-400">{categories.length} categorias cadastradas</p>
                </div>
                <button
                    onClick={() => {
                        resetForm()
                        setShowModal(true)
                    }}
                    className="flex items-center gap-2 bg-primary hover:bg-primary/90 text-white px-6 py-3 rounded-lg font-bold transition-all transform hover:scale-105"
                >
                    <Plus className="w-5 h-5" />
                    Nova Categoria
                </button>
            </div>

            {/* Categories Grid */}
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                {categories.length === 0 ? (
                    <div className="col-span-full bg-card border border-white/10 rounded-xl p-12 text-center">
                        <p className="text-gray-500">Nenhuma categoria cadastrada</p>
                    </div>
                ) : (
                    categories.map((category) => (
                        <div
                            key={category.id}
                            className="bg-card border border-white/10 rounded-xl p-4 hover:border-primary/50 transition-all"
                        >
                            <div className="flex items-start justify-between mb-3">
                                <div className="flex items-center gap-3">
                                    {category.icon && (
                                        <span className="text-3xl">{category.icon}</span>
                                    )}
                                    <div>
                                        <h3 className="text-white font-bold">{category.name}</h3>
                                        <p className="text-xs text-gray-500 font-mono">{category.slug}</p>
                                    </div>
                                </div>
                                <div className="flex gap-1">
                                    <button
                                        onClick={() => handleEdit(category)}
                                        className="p-2 hover:bg-white/10 rounded text-blue-400"
                                        title="Editar"
                                    >
                                        <Edit className="w-4 h-4" />
                                    </button>
                                    <button
                                        onClick={() => handleDelete(category)}
                                        className="p-2 hover:bg-white/10 rounded text-red-400"
                                        title="Excluir"
                                    >
                                        <Trash2 className="w-4 h-4" />
                                    </button>
                                </div>
                            </div>
                            <div className="text-xs text-gray-500">
                                Criada em {new Date(category.created_at).toLocaleDateString('pt-BR')}
                            </div>
                        </div>
                    ))
                )}
            </div>

            {/* Modal */}
            {showModal && (
                <div className="fixed inset-0 bg-black/80 backdrop-blur-sm flex items-center justify-center z-50 p-4">
                    <div className="bg-card border border-white/10 rounded-xl max-w-md w-full">
                        <div className="border-b border-white/10 p-6 flex items-center justify-between">
                            <h2 className="text-2xl font-bold text-white">
                                {editingCategory ? 'Editar Categoria' : 'Nova Categoria'}
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
                            {/* Nome */}
                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2">
                                    Nome <span className="text-red-400">*</span>
                                </label>
                                <input
                                    type="text"
                                    value={formData.name}
                                    onChange={(e) => handleNameChange(e.target.value)}
                                    required
                                    className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-primary"
                                    placeholder="Ex: Ação, Drama, Comédia"
                                />
                            </div>

                            {/* Slug */}
                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2">
                                    Slug <span className="text-red-400">*</span>
                                </label>
                                <input
                                    type="text"
                                    value={formData.slug}
                                    onChange={(e) => setFormData({ ...formData, slug: e.target.value })}
                                    required
                                    className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-primary font-mono"
                                    placeholder="acao, drama, comedia"
                                />
                                <p className="text-xs text-gray-500 mt-1">
                                    Gerado automaticamente. Deve ser único.
                                </p>
                            </div>

                            {/* Ícone */}
                            <div>
                                <label className="block text-sm font-bold text-gray-300 mb-2">
                                    Ícone (emoji)
                                </label>
                                <input
                                    type="text"
                                    value={formData.icon}
                                    onChange={(e) => setFormData({ ...formData, icon: e.target.value })}
                                    className="w-full bg-background border border-white/10 rounded-lg px-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-primary"
                                    placeholder="💥 😂 🎭 💕 👻 🚀"
                                    maxLength={2}
                                />
                                {formData.icon && (
                                    <div className="mt-2 flex items-center gap-2">
                                        <span className="text-3xl">{formData.icon}</span>
                                        <span className="text-sm text-gray-400">Preview</span>
                                    </div>
                                )}
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
