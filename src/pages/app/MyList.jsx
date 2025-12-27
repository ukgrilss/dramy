import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import { useAuth } from '@/contexts/AuthContext'
import { Play, Loader2, Bookmark, ArrowLeft } from 'lucide-react'
import { useNavigate } from 'react-router-dom'

export default function MyList() {
    const { user } = useAuth()
    const navigate = useNavigate()
    const [items, setItems] = useState([])
    const [loading, setLoading] = useState(true)

    useEffect(() => {
        if (!user) return

        async function fetchList() {
            setLoading(true)
            try {
                const { data, error } = await supabase
                    .from('user_list')
                    .select(`
                        id,
                        series:series_id(*),
                        filmes:movie_id(*)
                    `)
                    .order('created_at', { ascending: false })

                if (error) throw error

                const formattedItems = data?.map(item => {
                    const content = item.series || item.filmes
                    if (!content) return null
                    return {
                        id: content.id,
                        list_id: item.id,
                        titulo: content.title || content.titulo,
                        capa: content.poster_url || content.capa,
                        categoria: content.genre || content.categoria,
                        isSeries: !!item.series
                    }
                }).filter(Boolean) || []

                setItems(formattedItems)
            } catch (err) {
                console.error('Error fetching list:', err)
            } finally {
                setLoading(false)
            }
        }

        fetchList()
    }, [user])

    if (loading) return <div className="flex h-screen items-center justify-center text-primary"><Loader2 className="animate-spin" /></div>

    return (
        <div className="min-h-screen bg-background text-white font-sans py-24 px-4 md:px-8">
            <div className="flex items-center gap-4 mb-8">
                <button
                    onClick={() => navigate('/')}
                    className="p-2 rounded-full bg-white/10 hover:bg-white/20 hover:scale-110 transition-all text-white border border-white/5"
                >
                    <ArrowLeft className="w-6 h-6" />
                </button>
                <h1 className="text-3xl font-bold flex items-center gap-3">
                    <Bookmark className="text-primary fill-primary" />
                    Minha Lista
                </h1>
            </div>

            {items.length === 0 ? (
                <div className="text-center py-20 bg-white/5 rounded-2xl border border-white/10">
                    <p className="text-gray-400 text-lg mb-4">Sua lista está vazia.</p>
                    <button onClick={() => navigate('/')} className="px-6 py-2 bg-primary text-white rounded-lg hover:bg-primary/90 transition-colors">
                        Explorar Catálogo
                    </button>
                </div>
            ) : (
                <div className="grid grid-cols-2 gap-3 md:gap-4 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6">
                    {items.map((movie) => (
                        <div
                            key={movie.list_id}
                            onClick={() => navigate(`/title/${movie.id}`)}
                            className="movie-card group relative cursor-pointer overflow-hidden transform transition-all duration-300 hover:scale-105"
                        >
                            <div className="aspect-[2/3] w-full relative rounded-lg overflow-hidden">
                                <img
                                    src={movie.capa}
                                    alt={movie.titulo}
                                    className="h-full w-full object-cover transition-transform duration-500 group-hover:scale-110"
                                    loading="lazy"
                                />
                                <div className="absolute inset-0 bg-black/60 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-center justify-center">
                                    <div className="w-12 h-12 rounded-full bg-primary flex items-center justify-center transform scale-0 group-hover:scale-100 transition-transform duration-300 delay-100">
                                        <Play className="fill-white w-6 h-6 ml-1" />
                                    </div>
                                </div>
                                <div className="absolute inset-x-0 bottom-0 h-1/2 bg-gradient-to-t from-black/90 to-transparent pointer-events-none"></div>
                                <div className="absolute bottom-0 p-3 w-full">
                                    <h3 className="font-bold text-sm truncate text-white/90 drop-shadow-md">{movie.titulo}</h3>
                                    <div className="flex items-center gap-2 text-xs text-gray-300 mt-1">
                                        <span className="bg-primary/20 text-primary px-1.5 py-0.5 rounded text-[10px] font-bold border border-primary/30">
                                            {movie.isSeries ? 'Série' : 'Filme'}
                                        </span>
                                        <span>{movie.categoria?.split(',')[0]}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    ))}
                </div>
            )}
        </div>
    )
}
