import { useEffect, useState } from 'react'
import { useParams, useNavigate, Link } from 'react-router-dom'
import { supabase } from '@/lib/supabase'
import { Play, Star, Clock, Mic, Info, ArrowLeft, Heart, Share2, Check } from 'lucide-react'

export default function TitleDetails() {
    const { id } = useParams()
    const navigate = useNavigate()
    const [title, setTitle] = useState(null)
    const [episodes, setEpisodes] = useState([])
    const [loading, setLoading] = useState(true)
    const [activeTab, setActiveTab] = useState('episodes') // 'episodes' or 'info'
    const [watchProgress, setWatchProgress] = useState(null)
    const [userId, setUserId] = useState(null)

    useEffect(() => {
        // Get user for history check
        const checkUser = async () => {
            const { data: { user } } = await supabase.auth.getUser()
            if (user) setUserId(user.id)
        }
        checkUser()
    }, [])

    useEffect(() => {
        async function fetchTitleDetails() {
            setLoading(true)
            try {
                // 1. Try Series
                const { data: seriesData } = await supabase
                    .from('series')
                    .select('*')
                    .eq('id', id)
                    .maybeSingle()

                let currentTitle = null;

                if (seriesData) {
                    currentTitle = { ...seriesData, type: 'series', isSeries: true }
                    setTitle(currentTitle)

                    // Fetch episodes
                    const { data: eps } = await supabase
                        .from('episodes')
                        .select('*')
                        .eq('series_id', id)
                        .order('episode_number', { ascending: true })

                    setEpisodes(eps || [])
                } else {
                    // 2. Try Movies (Legacy)
                    const { data: movieData } = await supabase
                        .from('filmes')
                        .select('*')
                        .eq('id', id)
                        .maybeSingle()

                    if (movieData) {
                        currentTitle = { ...movieData, type: 'movie', isSeries: false, title: movieData.titulo, poster_url: movieData.capa, description: movieData.descricao, rating: 5.0 }
                        setTitle(currentTitle)
                        setEpisodes([]) // No episodes for movies
                    }
                }

                // 3. Check Watch History if user is logged in
                if (userId && currentTitle) {
                    const query = supabase.from('watch_history').select('progress_seconds, total_seconds').eq('user_id', userId)

                    if (currentTitle.isSeries) {
                        query.eq('series_id', currentTitle.id)
                    } else {
                        query.eq('movie_id', currentTitle.id)
                    }

                    const { data: history } = await query.maybeSingle()
                    if (history && history.progress_seconds > 0) {
                        setWatchProgress(history)
                    }
                }

            } catch (err) {
                console.error("Error fetching title:", err)
            } finally {
                setLoading(false)
            }
        }
        if (id) fetchTitleDetails()
    }, [id, userId])

    const [isInList, setIsInList] = useState(false)
    const [listLoading, setListLoading] = useState(false)

    // Check if in list
    useEffect(() => {
        if (!userId || !title) return
        const checkList = async () => {
            const { data } = await supabase
                .from('user_list')
                .select('id')
                .eq('user_id', userId)
                .eq(title.isSeries ? 'series_id' : 'movie_id', title.id)
                .maybeSingle()
            setIsInList(!!data)
        }
        checkList()
    }, [userId, title])

    const handleToggleList = async () => {
        if (!userId || !title) return
        setListLoading(true)
        try {
            if (isInList) {
                // Remove
                const { error } = await supabase
                    .from('user_list')
                    .delete()
                    .eq('user_id', userId)
                    .eq(title.isSeries ? 'series_id' : 'movie_id', title.id)
                if (error) throw error
                setIsInList(false)
            } else {
                // Add
                const { error } = await supabase
                    .from('user_list')
                    .insert({
                        user_id: userId,
                        series_id: title.isSeries ? title.id : null,
                        movie_id: !title.isSeries ? title.id : null // Text or UUID handled by DB cast if needed
                    })
                if (error) throw error
                setIsInList(true)
            }
        } catch (err) {
            console.error('Error toggling list:', err)
            alert('Erro ao atualizar lista.')
        } finally {
            setListLoading(false)
        }
    }

    const handlePlay = (episodeId = null) => {
        if (title.isSeries) {
            navigate(`/watch/${title.id}`)
        } else {
            navigate(`/watch/${title.id}`)
        }
    }

    if (loading) return <div className="h-screen bg-[#050505] flex items-center justify-center text-primary animate-pulse">Carregando...</div>

    if (!title) return <div className="h-screen bg-[#050505] flex items-center justify-center text-white">Título não encontrado.</div>

    return (
        <div className="min-h-screen bg-[#050505] text-white font-sans">
            {/* Header/Nav */}
            <div className="fixed top-0 left-0 w-full p-6 flex justify-between items-center z-50 bg-gradient-to-b from-black/80 to-transparent pointer-events-none">
                <button onClick={() => navigate(-1)} className="pointer-events-auto p-2 rounded-full bg-white/10 hover:bg-white/20 transition-all backdrop-blur-md">
                    <ArrowLeft className="w-6 h-6 text-white" />
                </button>
            </div>

            {/* Hero Section */}
            <div className="relative w-full h-[85vh] md:h-[90vh]">
                {/* Background Image */}
                <div className="absolute inset-0">
                    <img src={title.poster_url} className="w-full h-full object-cover" alt={title.title} />
                    {/* Gradients */}
                    <div className="absolute inset-0 bg-gradient-to-t from-[#050505] via-[#050505]/60 to-transparent" />
                    <div className="absolute inset-0 bg-gradient-to-r from-[#050505] via-[#050505]/40 to-transparent" />
                </div>

                {/* Content */}
                <div className="absolute bottom-0 left-0 w-full p-6 md:p-12 lg:p-16 z-10 max-w-4xl animate-fade-in-up">

                    {/* Title */}
                    <h1 className="text-4xl md:text-5xl lg:text-6xl font-black mb-4 leading-tight drop-shadow-lg">
                        {title.title}
                    </h1>

                    {/* Metadata Badges */}
                    <div className="flex flex-wrap items-center gap-4 mb-6 text-sm font-medium">
                        <div className="flex items-center gap-1 text-yellow-400">
                            <Star className="w-4 h-4 fill-yellow-400" />
                            <span>{title.rating || '9.8'}</span>
                        </div>
                        {title.audio_type && (
                            <div className="flex items-center gap-1 text-gray-300 bg-white/10 px-2 py-1 rounded backdrop-blur-sm">
                                <Mic className="w-3 h-3" />
                                <span className="capitalize">{title.audio_type}</span>
                            </div>
                        )}
                        {title.duration && (
                            <div className="flex items-center gap-1 text-gray-300 bg-white/10 px-2 py-1 rounded backdrop-blur-sm">
                                <Clock className="w-3 h-3" />
                                <span>{title.duration} min</span>
                            </div>
                        )}
                        <div className="bg-primary/20 text-primary px-3 py-1 rounded text-xs font-bold border border-primary/30 uppercase tracking-wider">
                            {title.genre || 'Drama'}
                        </div>
                    </div>

                    {/* Description - Truncated initially */}
                    <p className="text-gray-300 text-sm md:text-base leading-relaxed mb-8 max-w-2xl line-clamp-3 md:line-clamp-none">
                        {title.description}
                    </p>

                    {/* Action Buttons */}
                    <div className="flex items-center gap-4">
                        <button
                            onClick={() => handlePlay()}
                            className="bg-gradient-to-r from-primary to-pink-600 hover:from-primary/90 hover:to-pink-600/90 text-white px-8 py-3.5 rounded-lg font-bold flex items-center gap-3 transition-all transform hover:scale-105 shadow-lg shadow-primary/25"
                        >
                            <Play className="w-5 h-5 fill-white" />
                            {watchProgress ? 'Continuar Assistindo' : 'Assistir Agora'}
                        </button>
                        <button
                            onClick={handleToggleList}
                            disabled={listLoading}
                            className="bg-white/10 hover:bg-white/20 text-white p-3.5 rounded-lg font-bold transition-all backdrop-blur-sm group disabled:opacity-50"
                        >
                            <Heart className={`w-5 h-5 transition-colors ${isInList ? 'fill-red-500 text-red-500' : 'group-hover:text-red-500'}`} />
                        </button>
                        <button className="bg-white/10 hover:bg-white/20 text-white p-3.5 rounded-lg font-bold transition-all backdrop-blur-sm">
                            <Share2 className="w-5 h-5" />
                        </button>
                    </div>
                </div>
            </div>

            {/* Tabs / Content Section - Only show if has multiple episodes */}
            {episodes.length > 1 ? (
                <div className="container mx-auto px-4 py-8 md:px-12 -mt-10 relative z-20">
                    <div className="flex items-center gap-8 border-b border-white/10 mb-8 overflow-x-auto">
                        <button
                            onClick={() => setActiveTab('episodes')}
                            className={`pb-4 text-lg font-bold transition-all whitespace-nowrap ${activeTab === 'episodes' ? 'text-white border-b-2 border-primary' : 'text-gray-500 hover:text-white'}`}
                        >
                            Episódios
                        </button>
                        <button
                            onClick={() => setActiveTab('info')}
                            className={`pb-4 text-lg font-bold transition-all whitespace-nowrap ${activeTab === 'info' ? 'text-white border-b-2 border-primary' : 'text-gray-500 hover:text-white'}`}
                        >
                            Informações
                        </button>
                    </div>

                    {activeTab === 'episodes' && (
                        <div className="animate-fade-in grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                            {episodes.map((ep) => (
                                <div
                                    key={ep.id}
                                    onClick={() => handlePlay(ep.id)}
                                    className="group bg-[#111] hover:bg-[#1a1a1a] border border-white/5 rounded-xl p-4 cursor-pointer transition-all flex gap-4 items-center"
                                >
                                    {/* Thumbnail / Number */}
                                    <div className="w-24 h-16 bg-white/5 rounded-lg flex items-center justify-center relative overflow-hidden group-hover:border-primary/50 border border-transparent transition-all">
                                        <img src={title.poster_url} className="absolute inset-0 w-full h-full object-cover opacity-50 group-hover:opacity-30 transition-opacity" alt="" />
                                        <Play className="w-6 h-6 text-white relative z-10 opacity-70 group-hover:opacity-100 group-hover:scale-110 transition-all" />
                                    </div>

                                    <div className="flex-1 min-w-0">
                                        <h4 className="font-bold text-white text-sm mb-1 group-hover:text-primary transition-colors truncate">
                                            {ep.title && ep.title !== `Episódio ${ep.episode_number}` ? ep.title : title.title}
                                        </h4>
                                        <div className="flex items-center gap-2 text-xs text-gray-500">
                                            <span className="bg-white/10 px-2 py-0.5 rounded text-gray-300">EP {ep.episode_number}</span>
                                            {ep.duration && <span>• {ep.duration}m</span>}
                                        </div>
                                    </div>

                                    <div className="p-2 rounded-full border border-white/10 group-hover:bg-primary group-hover:border-primary transition-all">
                                        <Play className="w-4 h-4 text-gray-400 group-hover:text-white fill-current" />
                                    </div>
                                </div>
                            ))}
                        </div>
                    )}

                    {activeTab === 'info' && (
                        <div className="animate-fade-in grid grid-cols-1 md:grid-cols-2 gap-8 text-sm">
                            <div className="space-y-4">
                                <div>
                                    <h4 className="text-gray-500 font-bold mb-1">Sinopse Completa</h4>
                                    <p className="text-gray-300 leading-relaxed">{title.description}</p>
                                </div>
                            </div>
                            <div className="space-y-4">
                                <div className="grid grid-cols-2 gap-4">
                                    <div className='bg-white/5 p-4 rounded-lg'>
                                        <h4 className="text-gray-500 font-bold mb-1">Gênero</h4>
                                        <p className="text-white">{title.genre || 'Drama'}</p>
                                    </div>
                                    <div className='bg-white/5 p-4 rounded-lg'>
                                        <h4 className="text-gray-500 font-bold mb-1">Ano</h4>
                                        <p className="text-white">{new Date(title.created_at).getFullYear()}</p>
                                    </div>
                                    <div className='bg-white/5 p-4 rounded-lg'>
                                        <h4 className="text-gray-500 font-bold mb-1">Áudio</h4>
                                        <p className="text-white capitalize">{title.audio_type || 'Dublado'}</p>
                                    </div>
                                    <div className='bg-white/5 p-4 rounded-lg'>
                                        <h4 className="text-gray-500 font-bold mb-1">Classificação</h4>
                                        <p className="text-white flex items-center gap-1">
                                            <Star className="w-3 h-3 text-yellow-500 fill-yellow-500" />
                                            {title.rating}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    )}
                </div>
            ) : (
                // Single Episode / Movie View - Hide Tabs, Just Content Info
                <div className="container mx-auto px-4 py-8 md:px-12 -mt-10 relative z-20">
                    <div className="animate-fade-in grid grid-cols-1 md:grid-cols-2 gap-8 text-sm border-t border-white/10 pt-8">
                        <div className="space-y-4">
                            <div>
                                <h4 className="text-gray-500 font-bold mb-1">Sinopse</h4>
                                <p className="text-gray-300 leading-relaxed text-base">{title.description}</p>
                            </div>
                        </div>
                        <div className="space-y-4">
                            <div className="grid grid-cols-2 gap-4">
                                <div className='bg-white/5 p-4 rounded-lg'>
                                    <h4 className="text-gray-500 font-bold mb-1">Gênero</h4>
                                    <p className="text-white">{title.genre || 'Drama'}</p>
                                </div>
                                <div className='bg-white/5 p-4 rounded-lg'>
                                    <h4 className="text-gray-500 font-bold mb-1">Ano</h4>
                                    <p className="text-white">{new Date(title.created_at).getFullYear()}</p>
                                </div>
                                <div className='bg-white/5 p-4 rounded-lg'>
                                    <h4 className="text-gray-500 font-bold mb-1">Áudio</h4>
                                    <p className="text-white capitalize">{title.audio_type || 'Dublado'}</p>
                                </div>
                                <div className='bg-white/5 p-4 rounded-lg'>
                                    <h4 className="text-gray-500 font-bold mb-1">Classificação</h4>
                                    <p className="text-white flex items-center gap-1">
                                        <Star className="w-3 h-3 text-yellow-500 fill-yellow-500" />
                                        {title.rating}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            )}
        </div>
    )
}
