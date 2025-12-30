import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import { Play, ChevronRight, ChevronLeft, Search } from 'lucide-react'
import { useNavigate, useSearchParams } from 'react-router-dom'

const ITEMS_PER_PAGE = 24

export default function ContentList() {
    const navigate = useNavigate()
    const [searchParams] = useSearchParams()
    const query = searchParams.get('q') || ''

    // Start with empty if no query, or fetch all if "browse" mode? 
    // Let's assume it's the general "Browse" + "Search" page.

    const [movies, setMovies] = useState([])
    const [loading, setLoading] = useState(true)
    const [currentPage, setCurrentPage] = useState(1)

    useEffect(() => {
        async function fetchData() {
            setLoading(true)

            // Fetch ALL series (Client-Side Filtering for max responsiveness on small catalog)
            // If scale grows, move to .ilike('title', `%${query}%`)
            const { data: seriesData, error } = await supabase
                .from('series')
                .select('*')
                .limit(2000)
                .order('created_at', { ascending: false })

            if (error) {
                console.error("Error fetching series:", error)
            }

            const mappedMovies = seriesData?.map(s => ({
                id: s.id,
                titulo: s.title,
                capa: s.poster_url,
                categoria: s.genre,
                descricao: s.description,
                rating: s.rating
            })) || []

            setMovies(mappedMovies)
            setLoading(false)
        }
        fetchData()
    }, []) // Fetch once

    // Reset pagination when query changes
    useEffect(() => {
        setCurrentPage(1)
    }, [query])

    const handleWatch = (movie) => {
        if (movie?.id) {
            navigate(`/title/${movie.id}`, { state: { movie } })
        }
    }

    // Filter Logic
    const filteredMovies = movies.filter(m => {
        if (!query) return true // Show all if no search
        const q = query.toLowerCase()
        return (
            m.titulo?.toLowerCase().includes(q) ||
            m.descricao?.toLowerCase().includes(q) ||
            m.categoria?.toLowerCase().includes(q)
        )
    })

    // Pagination Logic
    const totalPages = Math.ceil(filteredMovies.length / ITEMS_PER_PAGE)
    const currentMovies = filteredMovies.slice(
        (currentPage - 1) * ITEMS_PER_PAGE,
        currentPage * ITEMS_PER_PAGE
    )

    const handlePageChange = (page) => {
        setCurrentPage(page)
        window.scrollTo({ top: 0, behavior: 'smooth' })
    }

    if (loading) return (
        <div className="flex h-screen w-full items-center justify-center bg-background">
            <div className="flex flex-col items-center gap-2">
                <div className="w-10 h-10 border-4 border-primary border-t-transparent rounded-full animate-spin"></div>
                <span className="text-gray-400 text-sm">Buscando títulos...</span>
            </div>
        </div>
    )

    return (
        <div className="min-h-screen bg-background text-white font-sans pt-24 pb-12 px-4 md:px-8">
            <div className="container mx-auto">

                {/* Header */}
                <div className="mb-8">
                    <h1 className="text-3xl font-black mb-2 flex items-center gap-3">
                        <Search className="w-8 h-8 text-primary" />
                        {query ? `Resultados para "${query}"` : 'Catálogo Completo'}
                    </h1>
                    <p className="text-gray-400">
                        {filteredMovies.length} títulos encontrados
                    </p>
                </div>

                {/* Grid */}
                {filteredMovies.length === 0 ? (
                    <div className="text-center py-20 text-gray-500 bg-white/5 rounded-2xl border border-white/5">
                        <p className="text-xl">Nenhum título encontrado 😢</p>
                        <p className="text-sm mt-2">Tente buscar por outro nome ou gênero.</p>
                    </div>
                ) : (
                    <>
                        <div className="grid grid-cols-2 gap-3 md:gap-4 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6">
                            {currentMovies.map((movie) => (
                                <div
                                    key={movie.id}
                                    onClick={() => handleWatch(movie)}
                                    className="movie-card group relative cursor-pointer overflow-hidden transform transition-all duration-300 hover:scale-105 rounded-xl border border-white/5 bg-white/5"
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
                                            <div className="w-12 h-12 rounded-full bg-primary flex items-center justify-center transform scale-0 group-hover:scale-100 transition-transform duration-300 delay-100 shadow-[0_0_20px_rgba(236,72,153,0.5)]">
                                                <Play className="fill-white w-5 h-5 ml-1" />
                                            </div>
                                        </div>

                                        {/* Metadata */}
                                        <div className="absolute inset-x-0 bottom-0 p-3 bg-gradient-to-t from-black via-black/80 to-transparent">
                                            <h3 className="font-bold text-sm truncate text-white/90 drop-shadow-md">{movie.titulo}</h3>
                                            <div className="flex items-center justify-between text-xs text-gray-300 mt-1">
                                                <span>{movie.categoria?.split(',')[0]}</span>
                                                {movie.rating && (
                                                    <span className="text-amber-400 font-bold flex items-center gap-0.5">
                                                        ★ {movie.rating}
                                                    </span>
                                                )}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            ))}
                        </div>

                        {/* Pagination */}
                        {totalPages > 1 && (
                            <div className="flex justify-center items-center gap-2 mt-12">
                                <button
                                    onClick={() => handlePageChange(currentPage - 1)}
                                    disabled={currentPage === 1}
                                    className="p-2 rounded-lg bg-card border border-white/10 hover:bg-primary hover:text-white disabled:opacity-50 disabled:cursor-not-allowed transition-colors"
                                >
                                    <ChevronLeft className="w-5 h-5" />
                                </button>

                                <span className="text-sm font-medium text-gray-400 px-4">
                                    Página {currentPage} de {totalPages}
                                </span>

                                <button
                                    onClick={() => handlePageChange(currentPage + 1)}
                                    disabled={currentPage === totalPages}
                                    className="p-2 rounded-lg bg-card border border-white/10 hover:bg-primary hover:text-white disabled:opacity-50 disabled:cursor-not-allowed transition-colors"
                                >
                                    <ChevronRight className="w-5 h-5" />
                                </button>
                            </div>
                        )}
                    </>
                )}
            </div>
        </div>
    )
}
