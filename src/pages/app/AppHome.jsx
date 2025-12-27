import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import { Play, ChevronRight, ChevronLeft, Clock } from 'lucide-react'
import { useNavigate } from 'react-router-dom'
import Hero from '@/components/Hero'

const CATEGORIES = ["Todos", "Doramas", "Séries", "+18", "Filmes"]
const ITEMS_PER_PAGE = 24

export default function AppHome() {
    const navigate = useNavigate()
    const [movies, setMovies] = useState([])
    const [banners, setBanners] = useState([])
    const [history, setHistory] = useState([])
    const [loading, setLoading] = useState(true)
    const [selectedCategory, setSelectedCategory] = useState("Todos")

    // Pagination State
    const [currentPage, setCurrentPage] = useState(1)

    useEffect(() => {
        async function fetchData() {
            setLoading(true)

            // 1. Fetch Series (instead of filmes)
            // The content dump uses 'series' table. We map it to the 'movies' state structure.
            const { data: seriesData, error } = await supabase
                .from('series')
                .select('*')
                .limit(300)
                .order('created_at', { ascending: false })

            if (error) {
                console.error("Error fetching series:", error)
            }

            // Map series to expected 'movie' format
            const mappedMovies = seriesData?.map(s => ({
                id: s.id,
                titulo: s.title,
                capa: s.poster_url,
                categoria: s.genre, // 'genre' column from series
                descricao: s.description,
                rating: s.rating,
                // Add legacy fields if needed
                video_url: null,
                link: null
            })) || []

            // 2. Fetch Banners
            // Try fetching real banners first
            const { data: bannersData, error: bannersError } = await supabase
                .from('banners')
                .select('*')
                .eq('ativo', 1)

            let finalBanners = []

            if (bannersData && bannersData.length > 0) {
                // Map manual banners
                const joinedBanners = bannersData.map(b => {
                    const relatedItem = mappedMovies.find(m => m.id === b.filme_id)
                    return {
                        ...b,
                        filmes: relatedItem // Attach manually
                    }
                }).filter(b => b.filmes)
                finalBanners = joinedBanners
            }

            // Fallback: If no banners, use top 3 series
            if (finalBanners.length === 0 && mappedMovies.length > 0) {
                finalBanners = mappedMovies.slice(0, 5).map(m => ({
                    id: m.id,
                    filme_id: m.id,
                    imagem: m.capa,
                    ativo: true,
                    filmes: m,
                    titulo: m.titulo,
                    descricao: m.descricao
                }))
            }

            setMovies(mappedMovies)
            setBanners(finalBanners)

            // 3. Fetch Continue Watching History
            const { data: historyData } = await supabase
                .from('watch_history')
                .select(`
                    *,
                    series:series_id(*),
                    filmes:movie_id(*)
                `)
                .order('last_watched_at', { ascending: false })
                .limit(10)

            if (historyData && historyData.length > 0) {
                const formattedHistory = historyData.map(item => {
                    const content = item.series || item.filmes
                    if (!content) return null

                    return {
                        id: content.id,
                        history_id: item.id,
                        titulo: content.title || content.titulo, // Handle different naming conventions
                        capa: content.poster_url || content.capa,
                        categoria: content.genre || content.categoria,
                        progress: item.progress_seconds,
                        total: item.total_seconds || 0, // Avoid division by zero
                        isSeries: !!item.series_id,
                        // Keep reference to original IDs for navigation
                        series_id: item.series_id,
                        movie_id: item.movie_id
                    }
                }).filter(Boolean) // Remove nulls

                setHistory(formattedHistory)
            }

            setLoading(false)
        }

        fetchData()
    }, [])

    // Reset page when category changes
    useEffect(() => {
        setCurrentPage(1)
    }, [selectedCategory])

    const handleWatch = (movie) => {
        if (movie?.id) {
            navigate(`/title/${movie.id}`, { state: { movie } })
        }
    }

    // Filter Logic
    const filteredMovies = selectedCategory === "Todos"
        ? movies
        : movies.filter(m => m.categoria?.toLowerCase().includes(selectedCategory.toLowerCase().slice(0, -1)))

    // Pagination Logic
    const totalPages = Math.ceil(filteredMovies.length / ITEMS_PER_PAGE)
    const currentMovies = filteredMovies.slice(
        (currentPage - 1) * ITEMS_PER_PAGE,
        currentPage * ITEMS_PER_PAGE
    )

    const handlePageChange = (page) => {
        setCurrentPage(page)
        window.scrollTo({ top: 500, behavior: 'smooth' })
    }

    if (loading) return <div className="flex h-screen items-center justify-center text-primary animate-pulse w-full">Carregando Dramy...</div>

    return (
        <div className="min-h-screen bg-background text-white font-sans pb-12">

            {/* HERO SECTION */}
            <Hero banners={banners} movies={movies} history={history} />

            <div className="container mx-auto px-4 py-8 -mt-20 relative z-30">

                {/* Movies Grid */}
                <div className="space-y-6">

                    {/* Continue Watching Section */}
                    {history.length > 0 && selectedCategory === "Todos" && (
                        <div className="mb-10">
                            <h2 className="text-xl font-bold flex items-center gap-2 mb-4 text-white/90">
                                <Clock className="w-5 h-5 text-primary" />
                                Continuar Assistindo
                            </h2>
                            <div className="flex gap-4 overflow-x-auto pb-4 snap-x scrollbar-hide">
                                {history.map((item) => (
                                    <div
                                        key={item.history_id}
                                        onClick={() => handleWatch(item)}
                                        className="min-w-[160px] w-[160px] md:min-w-[200px] md:w-[200px] snap-start relative group cursor-pointer"
                                    >
                                        <div className="aspect-video w-full rounded-lg overflow-hidden relative border border-white/10">
                                            <img
                                                src={item.capa}
                                                alt={item.titulo}
                                                className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                                            />
                                            <div className="absolute inset-0 bg-black/40 group-hover:bg-black/20 transition-colors flex items-center justify-center">
                                                <Play className="w-8 h-8 text-white opacity-0 group-hover:opacity-100 transition-opacity" fill="currentColor" />
                                            </div>

                                            {/* Progress Bar */}
                                            {item.total > 0 && (
                                                <div className="absolute bottom-0 left-0 w-full h-1 bg-gray-700/50">
                                                    <div
                                                        className="h-full bg-red-600 shadow-[0_0_10px_rgba(220,38,38,0.7)]"
                                                        style={{ width: `${Math.min(100, (item.progress / item.total) * 100)}%` }}
                                                    />
                                                </div>
                                            )}
                                        </div>
                                        <h3 className="mt-2 text-sm font-medium text-gray-200 truncate">{item.titulo}</h3>
                                        <p className="text-xs text-gray-500">
                                            {item.isSeries ? 'Série' : 'Filme'}
                                        </p>
                                    </div>
                                ))}
                            </div>
                        </div>
                    )}

                    <h2 className="text-2xl font-bold flex items-center gap-2">
                        <div className="w-1 h-8 bg-primary rounded-full"></div>
                        {selectedCategory === "Todos" ? "Catálogo" : selectedCategory}
                    </h2>

                    {filteredMovies.length === 0 ? (
                        <div className="text-center py-20 text-gray-500">
                            Nenhum título encontrado.
                        </div>
                    ) : (
                        <>
                            <div className="grid grid-cols-2 gap-3 md:gap-4 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 pt-2">
                                {currentMovies.map((movie) => (
                                    <div
                                        key={movie.id}
                                        onClick={() => handleWatch(movie)}
                                        className="movie-card group relative cursor-pointer overflow-hidden transform transition-all duration-300 hover:scale-105"
                                    >
                                        <div className="aspect-[2/3] w-full relative">
                                            <img
                                                src={movie.capa}
                                                alt={movie.titulo}
                                                className="h-full w-full object-cover transition-transform duration-500 group-hover:scale-110"
                                                loading="lazy"
                                            />
                                            {/* Hover Overlay */}
                                            <div className="absolute inset-0 bg-black/60 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-center justify-center">
                                                <div className="w-12 h-12 rounded-full bg-primary flex items-center justify-center transform scale-0 group-hover:scale-100 transition-transform duration-300 delay-100">
                                                    <Play className="fill-white w-6 h-6 ml-1" />
                                                </div>
                                            </div>

                                            {/* Gradient Overlay at bottom */}
                                            <div className="absolute inset-x-0 bottom-0 h-1/2 bg-gradient-to-t from-black/90 to-transparent pointer-events-none"></div>

                                            <div className="absolute bottom-0 p-3 w-full">
                                                <h3 className="font-bold text-sm truncate text-white/90 drop-shadow-md">{movie.titulo}</h3>
                                                <div className="flex items-center gap-2 text-xs text-gray-300 mt-1">
                                                    <span className="bg-primary/20 text-primary px-1.5 py-0.5 rounded text-[10px] font-bold border border-primary/30">HD</span>
                                                    <span>{movie.categoria?.split(',')[0] || 'Drama'}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                ))}
                            </div>

                            {/* Pagination Controls */}
                            {totalPages > 1 && (
                                <div className="flex justify-center items-center gap-2 mt-12 py-4">
                                    <button
                                        onClick={() => handlePageChange(currentPage - 1)}
                                        disabled={currentPage === 1}
                                        className="p-2 rounded-lg bg-card border border-white/10 hover:bg-primary hover:text-white disabled:opacity-50 disabled:hover:bg-card disabled:cursor-not-allowed transition-colors"
                                    >
                                        <ChevronLeft className="w-5 h-5" />
                                    </button>

                                    {Array.from({ length: totalPages }, (_, i) => i + 1).slice(
                                        Math.max(0, Math.min(currentPage - 3, totalPages - 5)),
                                        Math.max(5, Math.min(currentPage + 2, totalPages))
                                    ).map((page) => (
                                        <button
                                            key={page}
                                            onClick={() => handlePageChange(page)}
                                            className={`w-10 h-10 rounded-lg font-bold text-sm transition-all ${currentPage === page
                                                ? 'bg-primary text-white shadow-glow scale-110'
                                                : 'bg-card border border-white/10 hover:bg-white/10 text-gray-400'
                                                }`}
                                        >
                                            {page}
                                        </button>
                                    ))}

                                    <button
                                        onClick={() => handlePageChange(currentPage + 1)}
                                        disabled={currentPage === totalPages}
                                        className="p-2 rounded-lg bg-card border border-white/10 hover:bg-primary hover:text-white disabled:opacity-50 disabled:hover:bg-card disabled:cursor-not-allowed transition-colors"
                                    >
                                        <ChevronRight className="w-5 h-5" />
                                    </button>
                                </div>
                            )}
                        </>
                    )}
                </div>
            </div>
        </div>
    )
}
