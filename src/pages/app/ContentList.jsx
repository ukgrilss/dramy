import { useEffect, useState, useRef, useCallback } from 'react'
import { supabase } from '@/lib/supabase'
import { Play, Search, Loader2 } from 'lucide-react'
import { useNavigate, useSearchParams } from 'react-router-dom'

export default function ContentList() {
    const navigate = useNavigate()
    const [searchParams] = useSearchParams()
    const query = searchParams.get('q') || ''

    const [movies, setMovies] = useState([])
    const [loading, setLoading] = useState(true)
    const [displayedLimit, setDisplayedLimit] = useState(24) // Infinite scroll limit

    // Observer for infinite scroll
    const observerTarget = useRef(null)

    useEffect(() => {
        async function fetchData() {
            setLoading(true)

            // Client-side filtering strategy (same as before to keep logic safe)
            // Fetching a large batch is fine for this scale (~2000 items)
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
    }, [])

    const handleWatch = (movie) => {
        if (movie?.id) {
            navigate(`/title/${movie.id}`, { state: { movie } })
        }
    }

    // Filter Logic
    const filteredMovies = movies.filter(m => {
        if (!query) return true
        const q = query.toLowerCase()
        return (
            m.titulo?.toLowerCase().includes(q) ||
            m.descricao?.toLowerCase().includes(q) ||
            m.categoria?.toLowerCase().includes(q)
        )
    })

    // Infinite Scroll Logic
    const handleObserver = useCallback((entries) => {
        const [target] = entries
        if (target.isIntersecting && displayedLimit < filteredMovies.length) {
            setDisplayedLimit((prev) => prev + 24)
        }
    }, [filteredMovies.length, displayedLimit])

    useEffect(() => {
        const componentTarget = observerTarget.current // Copy ref to local variable
        const observer = new IntersectionObserver(handleObserver, {
            root: null,
            rootMargin: "500px", // Preload before reaching bottom
            threshold: 0
        })

        if (componentTarget) {
            observer.observe(componentTarget)
        }

        return () => {
            if (componentTarget) observer.unobserve(componentTarget)
        }
    }, [handleObserver])


    const visibleMovies = filteredMovies.slice(0, displayedLimit)

    if (loading) return (
        <div className="flex h-screen items-center justify-center bg-background">
            <div className="flex flex-col items-center gap-4 animate-pulse">
                <div className="w-12 h-12 rounded-full border-2 border-primary border-t-transparent animate-spin"></div>
            </div>
        </div>
    )

    return (
        <div className="min-h-screen bg-background text-white font-sans pt-24 pb-20 px-4 md:px-8">
            <div className="container mx-auto max-w-7xl">

                {/* Header - Minimalist */}
                <div className="mb-10 animate-in fade-in slide-in-from-top-4 duration-700">
                    <h1 className="text-2xl md:text-3xl font-bold text-white tracking-tight flex items-center gap-3">
                        {query ? (
                            <>
                                <Search className="w-6 h-6 text-gray-400" />
                                <span>Resultados para <span className="text-primary">"{query}"</span></span>
                            </>
                        ) : (
                            <span>Explorar</span>
                        )}
                    </h1>
                    {/* No counters, no subtitles, just the title */}
                </div>

                {/* Grid */}
                {visibleMovies.length === 0 ? (
                    <div className="text-center py-32 animate-in fade-in zoom-in duration-500">
                        <div className="inline-flex items-center justify-center w-16 h-16 rounded-full bg-white/5 mb-4">
                            <Search className="w-8 h-8 text-gray-600" />
                        </div>
                        <h3 className="text-lg font-medium text-gray-300">Nenhum título encontrado</h3>
                        <p className="text-sm text-gray-500 mt-2">Tente buscar com outros termos.</p>
                    </div>
                ) : (
                    <>
                        <div className="grid grid-cols-2 gap-4 md:gap-5 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6">
                            {visibleMovies.map((movie) => (
                                <div
                                    key={movie.id}
                                    onClick={() => handleWatch(movie)}
                                    className="group relative cursor-pointer overflow-hidden rounded-xl bg-gray-900 ring-1 ring-white/5 hover:ring-white/20 transition-all duration-200 active:scale-95 hover:shadow-xl"
                                >
                                    <div className="aspect-[2/3] w-full relative overflow-hidden rounded-xl">
                                        <img
                                            src={movie.capa}
                                            alt={movie.titulo}
                                            className="h-full w-full object-cover transition-transform duration-500 group-hover:scale-110"
                                            loading="lazy"
                                        />

                                        {/* Overlay & Play Icon */}
                                        <div className="absolute inset-0 bg-black/60 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-center justify-center backdrop-blur-[2px]">
                                            <Play className="text-white w-10 h-10 drop-shadow-lg scale-90 group-hover:scale-100 transition-transform" fill="currentColor" />
                                        </div>

                                        {/* Top Badge (Rating) */}
                                        {movie.rating > 4.5 && (
                                            <div className="absolute top-2 left-2 px-2 py-0.5 rounded bg-primary/95 backdrop-blur-md text-[10px] font-bold text-white uppercase tracking-wider shadow-sm">
                                                Top 10
                                            </div>
                                        )}
                                    </div>

                                    {/* Content Info - Clean */}
                                    <div className="p-3">
                                        <h3 className="text-xs md:text-sm font-medium text-gray-200 group-hover:text-white truncate transition-colors leading-tight">
                                            {movie.titulo}
                                        </h3>
                                        <p className="text-[10px] text-gray-500 mt-1 uppercase tracking-wide truncate opacity-80">
                                            {movie.categoria?.split(',')[0]}
                                        </p>
                                    </div>
                                </div>
                            ))}
                        </div>

                        {/* Infinite Scroll Trigger / Loader */}
                        <div ref={observerTarget} className="h-24 flex items-center justify-center w-full mt-8">
                            {visibleMovies.length < filteredMovies.length && (
                                <div className="flex items-center gap-2 text-gray-500 text-sm animate-pulse">
                                    <Loader2 className="w-4 h-4 animate-spin" />
                                    Carregando mais...
                                </div>
                            )}
                        </div>
                    </>
                )}
            </div>
        </div>
    )
}
