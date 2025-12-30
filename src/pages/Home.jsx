import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import { Play, ChevronRight, ChevronLeft } from 'lucide-react'
import { useNavigate } from 'react-router-dom'
import Hero from '@/components/Hero'
import Navbar from '@/components/Navbar'

const CATEGORIES = ["Todos", "Doramas", "Séries", "+18", "Filmes"]
const ITEMS_PER_PAGE = 24

export default function Home() {
    const navigate = useNavigate()
    const [movies, setMovies] = useState([])
    const [banners, setBanners] = useState([])
    const [loading, setLoading] = useState(true)
    const [selectedCategory, setSelectedCategory] = useState("Todos")

    // Pagination State
    const [currentPage, setCurrentPage] = useState(1)

    useEffect(() => {
        async function fetchData() {
            setLoading(true)
            // Fetch Movies
            const { data: moviesData } = await supabase
                .from('filmes')
                .select('*')
                .limit(2000)
                .order('created_at', { ascending: false })

            // Fetch Banners (Raw)
            const { data: bannersData, error: bannersError } = await supabase
                .from('banners')
                .select('*')
                .eq('ativo', true)

            if (bannersError) {
                console.error('Error fetching banners:', bannersError)
                // If banners fail, use first 3 movies WITH VIDEO URLs as fallback banners
                if (moviesData && moviesData.length > 0) {
                    const moviesWithVideo = moviesData.filter(m => m.video_url && m.video_url.trim() !== '')
                    const fallbackBanners = moviesWithVideo.slice(0, 3).map(movie => ({
                        id: movie.id,
                        filme_id: movie.id,
                        imagem: movie.capa,
                        ativo: true,
                        filmes: movie
                    }))
                    setBanners(fallbackBanners)
                }
            }

            if (moviesData) {
                setMovies(moviesData)

                // Manual Join for Banners
                if (bannersData && !bannersError) {
                    const joinedBanners = bannersData.map(b => {
                        const relatedMovie = moviesData.find(m => m.id === b.filme_id)
                        return {
                            ...b,
                            filmes: relatedMovie // Attach manually
                        }
                    }).filter(b => b.filmes) // Only keep valid ones

                    setBanners(joinedBanners.length > 0 ? joinedBanners : [])
                }
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
            navigate(`/watch/${movie.id}`, { state: { movie } })
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
            {/* NAVBAR */}
            <Navbar />

            {/* HERO SECTION */}
            <Hero banners={banners} movies={movies} />

            <div className="container mx-auto px-4 py-8 -mt-20 relative z-30">

                {/* Categories Tabs */}
                <div className="mb-8 flex gap-4 overflow-x-auto pb-4 scrollbar-hide">
                    {CATEGORIES.map(cat => (
                        <button
                            key={cat}
                            onClick={() => setSelectedCategory(cat)}
                            className={`px-6 py-2 rounded-full font-bold text-sm whitespace-nowrap transition-all cursor-pointer ${selectedCategory === cat
                                ? 'bg-primary text-white shadow-glow ring-2 ring-primary/50'
                                : 'bg-card border border-white/10 hover:bg-white/10 text-gray-400'
                                }`}
                        >
                            {cat}
                        </button>
                    ))}
                </div>

                {/* Movies Grid */}
                <div className="space-y-6">
                    <h2 className="text-2xl font-bold flex items-center gap-2">
                        <div className="w-1 h-8 bg-primary rounded-full"></div>
                        {selectedCategory === "Todos" ? "Catálogo Completo" : selectedCategory}
                        <span className="text-xs font-normal text-gray-500 bg-white/5 px-2 py-1 rounded-md ml-2">
                            +10.000 títulos
                        </span>
                    </h2>

                    {filteredMovies.length === 0 ? (
                        <div className="text-center py-20 text-gray-500">
                            Nenhum título encontrado nesta categoria.
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
                                                    <span>{movie.categoria?.split(',')[0]}</span>
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
