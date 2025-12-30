import { useEffect, useState, useRef } from 'react'
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

    // Pagination State (for Grid View)
    const [currentPage, setCurrentPage] = useState(1)

    useEffect(() => {
        async function fetchData() {
            setLoading(true)

            // 1. Fetch Series
            const { data: seriesData, error } = await supabase
                .from('series')
                .select('*')
                .limit(2000)
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
            const { data: bannersData, error: bannersError } = await supabase
                .from('banners')
                .select('*')
                .eq('ativo', 1)

            let finalBanners = []

            if (bannersData && bannersData.length > 0) {
                const joinedBanners = bannersData.map(b => {
                    const relatedItem = mappedMovies.find(m => m.id === b.filme_id)
                    return {
                        ...b,
                        filmes: relatedItem
                    }
                }).filter(b => b.filmes)
                finalBanners = joinedBanners
            }

            // Fallback: If no banners, use top 5 series
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
                        titulo: content.title || content.titulo,
                        capa: content.poster_url || content.capa,
                        categoria: content.genre || content.categoria,
                        progress: item.progress_seconds,
                        total: item.total_seconds || 0,
                        isSeries: !!item.series_id,
                        series_id: item.series_id,
                        movie_id: item.movie_id
                    }
                }).filter(Boolean)

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

    // Pagination Logic (Grid View)
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
        <div className="min-h-screen bg-background text-white font-sans overflow-x-hidden relative">
            {/* Surreal Background */}
            <div className="aurora-bg"></div>

            {/* HERO SECTION */}
            <Hero banners={banners} movies={movies} history={history} />

            <div className="container mx-auto px-2 pt-4 pb-0 -mt-16 relative z-30">

                {/* Movies Grid / Sections - High Density */}
                <div className="space-y-0">

                    {/* Continue Watching Section */}
                    {history.length > 0 && selectedCategory === "Todos" && (
                        <div className="mb-8 animate-in fade-in duration-700 pb-3 border-b border-white/5">
                            <div className="mb-4 px-1 flex items-center justify-between">
                                <h2 className="text-3xl md:text-5xl font-black text-white tracking-tight flex items-center gap-2">
                                    <div className="h-5 w-1 bg-primary rounded-full"></div>
                                    Continue assistindo
                                </h2>
                            </div>
                            <div className="flex gap-2 md:gap-3 overflow-x-auto pb-3 snap-x scrollbar-hide px-1">
                                {history.map((item) => (
                                    <div
                                        key={item.history_id}
                                        onClick={() => handleWatch(item)}
                                        className="min-w-[180px] w-[180px] md:min-w-[240px] md:w-[240px] snap-start relative group cursor-pointer"
                                    >
                                        <div className="aspect-video w-full rounded-xl overflow-hidden relative border border-white/5 shadow-[0_8px_30px_rgba(0,0,0,0.6)] bg-gray-900 group-hover:border-white/30 group-hover:shadow-[0_12px_40px_rgba(150,18,131,0.3)] transition-all duration-300">
                                            <img
                                                src={item.capa}
                                                alt={item.titulo}
                                                className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                                            />
                                            <div className="absolute inset-0 bg-black/40 group-hover:bg-black/20 transition-colors flex items-center justify-center">
                                                <Play className="w-8 h-8 text-white opacity-0 group-hover:opacity-100 transition-opacity drop-shadow-lg scale-90 group-hover:scale-100" fill="currentColor" />
                                            </div>

                                            {/* Progress Bar */}
                                            {item.total > 0 && (
                                                <div className="absolute bottom-0 left-0 w-full h-1 bg-gray-700/50">
                                                    <div
                                                        className="h-full bg-primary shadow-[0_0_10px_rgba(220,38,38,0.7)]"
                                                        style={{ width: `${Math.min(100, (item.progress / item.total) * 100)}%` }}
                                                    />
                                                </div>
                                            )}
                                        </div>
                                        <h3 className="mt-3 text-sm md:text-base font-bold text-gray-200 truncate group-hover:text-white transition-colors drop-shadow-md">{item.titulo}</h3>
                                        <p className="text-xs text-gray-500">
                                            Restam {Math.max(0, Math.floor((item.total - item.progress) / 60))} min
                                        </p>
                                    </div>
                                ))}
                            </div>
                        </div>
                    )}

                    {/* MAIN CONTENT SWITCHER: SECTIONS vs GRID */}
                    {selectedCategory === "Todos" ? (
                        /* ================= CURATED SECTIONS VIEW (DRAG & DROP INFINITE SCROLL) ================= */
                        <div className="space-y-0 animate-in fade-in duration-700 pb-4">

                            {/* SECTION: Trending */}
                            <CuratedSection
                                title="Em alta"
                                items={movies} // Top items naturally first by logic/sort
                                onWatch={handleWatch}
                                titleSize="text-3xl md:text-5xl"
                            />

                            {/* SECTION: Start Here (Filtered but passed full list) */}
                            <CuratedSection
                                title="Comece por aqui"
                                items={movies.filter(m => m.categoria?.includes('Curta') || m.rating > 4.5)}
                                onWatch={handleWatch}
                                titleSize="text-3xl md:text-5xl"
                            />

                            {/* SECTION: Romance */}
                            <CuratedSection
                                title="Romances intensos"
                                items={movies.filter(m => m.categoria?.match(/romance|amor|paixão/i))}
                                onWatch={handleWatch}
                                titleSize="text-3xl md:text-5xl"
                            />

                            {/* SECTION: Drama/Vingança */}
                            <CuratedSection
                                title="Histórias de poder"
                                items={movies.filter(m => m.categoria?.match(/drama|vingança|mistério/i))}
                                onWatch={handleWatch}
                                titleSize="text-3xl md:text-5xl"
                            />

                            {/* SECTION: New Episodes/Series (Offset slice to show different content) */}
                            <CuratedSection
                                title="Novos episódios"
                                items={movies.slice(15)} // Simple offset to vary content 
                                onWatch={handleWatch}
                                titleSize="text-3xl md:text-5xl"
                            />

                            {/* SECTION: Top Rated */}
                            <CuratedSection
                                title="Aclamados pela crítica"
                                items={movies.filter(m => m.rating >= 4.7)}
                                onWatch={handleWatch}
                                titleSize="text-3xl md:text-5xl"
                            />

                            {/* --- FINAL EXPLORATION BLOCK (4 Dense Rows in Horizontal Carousel) --- */}
                            <div className="pt-4 relative">
                                <h2 className="text-3xl md:text-5xl font-black text-white tracking-tight mb-4 px-3">Explorar mais</h2>

                                {/* Scroll Indicator - Pulsing Arrow */}
                                <div className="absolute right-4 top-1/2 -translate-y-1/2 z-10 pointer-events-none animate-pulse">
                                    <div className="bg-black/50 backdrop-blur-sm rounded-full p-2">
                                        <ChevronRight className="w-8 h-8 md:w-12 md:h-12 text-white/70" />
                                    </div>
                                </div>

                                <div className="overflow-x-auto scrollbar-hide cursor-grab active:cursor-grabbing">
                                    <div className="flex gap-2 px-3 pb-4">
                                        {/* Column 1 */}
                                        <div className="flex flex-col gap-2 min-w-[160px] md:min-w-[220px]">
                                            {movies.slice(0, 4).map((movie) => (
                                                <div
                                                    key={movie.id}
                                                    onClick={() => handleWatch(movie)}
                                                    className="aspect-[2/3] rounded-lg overflow-hidden cursor-pointer hover:scale-105 transition-transform duration-300 shadow-lg hover:shadow-xl"
                                                >
                                                    <img src={movie.capa} alt={movie.titulo} className="w-full h-full object-cover" loading="lazy" />
                                                </div>
                                            ))}
                                        </div>

                                        {/* Column 2 */}
                                        <div className="flex flex-col gap-2 min-w-[160px] md:min-w-[220px]">
                                            {movies.slice(4, 8).map((movie) => (
                                                <div
                                                    key={movie.id}
                                                    onClick={() => handleWatch(movie)}
                                                    className="aspect-[2/3] rounded-lg overflow-hidden cursor-pointer hover:scale-105 transition-transform duration-300 shadow-lg hover:shadow-xl"
                                                >
                                                    <img src={movie.capa} alt={movie.titulo} className="w-full h-full object-cover" loading="lazy" />
                                                </div>
                                            ))}
                                        </div>

                                        {/* Column 3 */}
                                        <div className="flex flex-col gap-2 min-w-[160px] md:min-w-[220px]">
                                            {movies.slice(8, 12).map((movie) => (
                                                <div
                                                    key={movie.id}
                                                    onClick={() => handleWatch(movie)}
                                                    className="aspect-[2/3] rounded-lg overflow-hidden cursor-pointer hover:scale-105 transition-transform duration-300 shadow-lg hover:shadow-xl"
                                                >
                                                    <img src={movie.capa} alt={movie.titulo} className="w-full h-full object-cover" loading="lazy" />
                                                </div>
                                            ))}
                                        </div>

                                        {/* Column 4 */}
                                        <div className="flex flex-col gap-2 min-w-[160px] md:min-w-[220px]">
                                            {movies.slice(12, 16).map((movie) => (
                                                <div
                                                    key={movie.id}
                                                    onClick={() => handleWatch(movie)}
                                                    className="aspect-[2/3] rounded-lg overflow-hidden cursor-pointer hover:scale-105 transition-transform duration-300 shadow-lg hover:shadow-xl"
                                                >
                                                    <img src={movie.capa} alt={movie.titulo} className="w-full h-full object-cover" loading="lazy" />
                                                </div>
                                            ))}
                                        </div>

                                        {/* Column 5 */}
                                        <div className="flex flex-col gap-2 min-w-[160px] md:min-w-[220px]">
                                            {movies.slice(16, 20).map((movie) => (
                                                <div
                                                    key={movie.id}
                                                    onClick={() => handleWatch(movie)}
                                                    className="aspect-[2/3] rounded-lg overflow-hidden cursor-pointer hover:scale-105 transition-transform duration-300 shadow-lg hover:shadow-xl"
                                                >
                                                    <img src={movie.capa} alt={movie.titulo} className="w-full h-full object-cover" loading="lazy" />
                                                </div>
                                            ))}
                                        </div>

                                        {/* Column 6 */}
                                        <div className="flex flex-col gap-2 min-w-[160px] md:min-w-[220px]">
                                            {movies.slice(20, 24).map((movie) => (
                                                <div
                                                    key={movie.id}
                                                    onClick={() => handleWatch(movie)}
                                                    className="aspect-[2/3] rounded-lg overflow-hidden cursor-pointer hover:scale-105 transition-transform duration-300 shadow-lg hover:shadow-xl"
                                                >
                                                    <img src={movie.capa} alt={movie.titulo} className="w-full h-full object-cover" loading="lazy" />
                                                </div>
                                            ))}
                                        </div>

                                        {/* Column 7 */}
                                        <div className="flex flex-col gap-2 min-w-[160px] md:min-w-[220px]">
                                            {movies.slice(24, 28).map((movie) => (
                                                <div
                                                    key={movie.id}
                                                    onClick={() => handleWatch(movie)}
                                                    className="aspect-[2/3] rounded-lg overflow-hidden cursor-pointer hover:scale-105 transition-transform duration-300 shadow-lg hover:shadow-xl"
                                                >
                                                    <img src={movie.capa} alt={movie.titulo} className="w-full h-full object-cover" loading="lazy" />
                                                </div>
                                            ))}
                                        </div>

                                        {/* Column 8 */}
                                        <div className="flex flex-col gap-2 min-w-[160px] md:min-w-[220px]">
                                            {movies.slice(28, 32).map((movie) => (
                                                <div
                                                    key={movie.id}
                                                    onClick={() => handleWatch(movie)}
                                                    className="aspect-[2/3] rounded-lg overflow-hidden cursor-pointer hover:scale-105 transition-transform duration-300 shadow-lg hover:shadow-xl"
                                                >
                                                    <img src={movie.capa} alt={movie.titulo} className="w-full h-full object-cover" loading="lazy" />
                                                </div>
                                            ))}
                                        </div>

                                        {/* Column 9 */}
                                        <div className="flex flex-col gap-2 min-w-[160px] md:min-w-[220px]">
                                            {movies.slice(32, 36).map((movie) => (
                                                <div
                                                    key={movie.id}
                                                    onClick={() => handleWatch(movie)}
                                                    className="aspect-[2/3] rounded-lg overflow-hidden cursor-pointer hover:scale-105 transition-transform duration-300 shadow-lg hover:shadow-xl"
                                                >
                                                    <img src={movie.capa} alt={movie.titulo} className="w-full h-full object-cover" loading="lazy" />
                                                </div>
                                            ))}
                                        </div>

                                        {/* Column 10 */}
                                        <div className="flex flex-col gap-2 min-w-[160px] md:min-w-[220px]">
                                            {movies.slice(36, 40).map((movie) => (
                                                <div
                                                    key={movie.id}
                                                    onClick={() => handleWatch(movie)}
                                                    className="aspect-[2/3] rounded-lg overflow-hidden cursor-pointer hover:scale-105 transition-transform duration-300 shadow-lg hover:shadow-xl"
                                                >
                                                    <img src={movie.capa} alt={movie.titulo} className="w-full h-full object-cover" loading="lazy" />
                                                </div>
                                            ))}
                                        </div>
                                    </div>
                                </div>
                            </div>

                            {/* FINAL FOOTER SECTION - Enhanced */}
                            <div className="relative mt-0 pt-16 pb-0 mb-0 overflow-hidden">
                                {/* Gradient Background */}
                                <div className="absolute inset-0 bg-gradient-to-t from-primary/5 via-transparent to-transparent"></div>
                                <div className="absolute inset-0 bg-gradient-to-b from-transparent via-white/[0.02] to-transparent"></div>

                                {/* Content Stats */}
                                <div className="relative z-10 flex flex-col items-center justify-center space-y-0 px-4">
                                    {/* Stats Row */}
                                    <div className="flex items-center gap-8 md:gap-16 text-center mb-8">
                                        <div className="flex flex-col">
                                            <span className="text-3xl md:text-5xl font-black text-white">+10 mil</span>
                                            <span className="text-xs md:text-sm text-gray-400 font-medium mt-1">Títulos</span>
                                        </div>
                                        <div className="h-12 w-px bg-white/10"></div>
                                        <div className="flex flex-col">
                                            <span className="text-3xl md:text-5xl font-black text-white">HD</span>
                                            <span className="text-xs md:text-sm text-gray-400 font-medium mt-1">Qualidade</span>
                                        </div>
                                        <div className="h-12 w-px bg-white/10"></div>
                                        <div className="flex flex-col">
                                            <span className="text-3xl md:text-5xl font-black text-white">24/7</span>
                                            <span className="text-xs md:text-sm text-gray-400 font-medium mt-1">Disponível</span>
                                        </div>
                                    </div>

                                    {/* Divider */}
                                    <div className="w-full max-w-md h-px bg-gradient-to-r from-transparent via-white/10 to-transparent mb-8"></div>

                                    {/* CTA Section */}
                                    <div className="flex flex-col items-center space-y-4 pb-0">
                                        <p className="text-gray-400 text-sm font-medium">Não encontrou o que procurava?</p>
                                        <button
                                            onClick={() => navigate('/conteudos')}
                                            className="group relative px-8 py-4 rounded-full bg-gradient-to-r from-primary/20 to-primary/10 hover:from-primary/30 hover:to-primary/20 border border-primary/20 hover:border-primary/40 transition-all duration-300 shadow-lg shadow-primary/5 hover:shadow-primary/10"
                                        >
                                            <span className="text-white font-bold text-base tracking-wide flex items-center gap-2">
                                                Explorar catálogo completo
                                                <ChevronRight className="w-5 h-5 transition-transform group-hover:translate-x-1" />
                                            </span>
                                        </button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    ) : (
                        /* ================= GRID VIEW (FOR CATEGORIES) ================= */
                        <>
                            <div className="mb-6 flex items-baseline justify-between transition-all">
                                <h2 className="text-2xl font-bold text-white tracking-tight">
                                    {selectedCategory}
                                </h2>
                                <p className="text-gray-500 text-sm font-medium">{filteredMovies.length} títulos</p>
                            </div>

                            {filteredMovies.length === 0 ? (
                                <div className="text-center py-20 bg-white/5 rounded-2xl border border-white/5">
                                    <h3 className="text-xl font-bold text-white mb-2">Nenhum título encontrado</h3>
                                    <p className="text-gray-400">Tente buscar por outra categoria.</p>
                                </div>
                            ) : (
                                <>
                                    <div className="grid grid-cols-2 gap-4 md:gap-5 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 animate-in slide-in-from-bottom-4 duration-500">
                                        {currentMovies.map((movie) => (
                                            <MovieCardSimple key={movie.id} movie={movie} onClick={() => handleWatch(movie)} />
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
                                                        ? 'bg-primary text-white shadow-glow'
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
                        </>
                    )}
                </div>
            </div>
        </div>
    )
}

// --- CURATED SECTION WITH DRAG & INFINITE SCROLL ---

function CuratedSection({ title, items, onWatch, titleSize = "text-xl md:text-3xl" }) {
    const navigate = useNavigate()
    const scrollRef = useRef(null)

    // State for Lazy Loading / Virtual Pagination
    const [visibleItems, setVisibleItems] = useState(15)

    // State for Drag Logic
    const [isDown, setIsDown] = useState(false)
    const [startX, setStartX] = useState(0)
    const [scrollLeft, setScrollLeft] = useState(0)
    const [isDragging, setIsDragging] = useState(false) // Distinguish click vs drag

    if (!items || items.length === 0) return null;

    // --- INFINITE SCROLL / LAZY LOAD LOGIC ---
    const handleScrollEvent = () => {
        if (scrollRef.current) {
            const { scrollLeft, scrollWidth, clientWidth } = scrollRef.current
            // If user is near end (within 300px), load more
            if (scrollLeft + clientWidth >= scrollWidth - 400) {
                if (visibleItems < items.length) {
                    setVisibleItems(prev => Math.min(prev + 10, items.length))
                }
            }
        }
    }

    // --- MOUSE DRAG LOGIC ---
    const handleMouseDown = (e) => {
        setIsDown(true)
        setIsDragging(false)
        if (scrollRef.current) {
            setStartX(e.pageX - scrollRef.current.offsetLeft)
            setScrollLeft(scrollRef.current.scrollLeft)
        }
    }

    const handleMouseLeave = () => {
        setIsDown(false)
        // setIsDragging(false) // Don't reset immediately to avoid accidental clicks
    }

    const handleMouseUp = () => {
        setIsDown(false)
        setTimeout(() => setIsDragging(false), 50)
    }

    const handleMouseMove = (e) => {
        if (!isDown) return
        e.preventDefault()
        setIsDragging(true)
        if (scrollRef.current) {
            const x = e.pageX - scrollRef.current.offsetLeft
            const walk = (x - startX) * 1.5
            scrollRef.current.scrollLeft = scrollLeft - walk
        }
    }

    // Rendered list
    const currentItems = items.slice(0, visibleItems)

    return (
        <div className="group/section relative py-4 animate-cinematic">
            {/* Subtle background panel for depth */}
            <div className="absolute inset-0 bg-gradient-to-b from-white/[0.02] to-transparent rounded-2xl opacity-50"></div>

            {/* Section Header */}
            <div className="mb-4 px-3 md:px-6 flex items-center justify-between relative z-10">
                <h2
                    className={`${titleSize} font-black text-white tracking-tight hover:text-primary transition-colors cursor-pointer flex items-center gap-2`}
                    onClick={() => navigate('/conteudos')}
                >
                    {title}
                    <ChevronRight className="w-4 h-4 text-gray-500 md:hidden" />
                </h2>

                <button
                    onClick={() => navigate('/conteudos')}
                    className="hidden md:flex group/btn items-center gap-1 text-xs font-bold uppercase tracking-wider text-gray-400 hover:text-white transition-colors"
                >
                    Ver mais
                    <ChevronRight className="w-3 h-3 transition-transform group-hover/btn:translate-x-0.5" />
                </button>
            </div>

            <div className="relative group perspective-1000">
                <div
                    ref={scrollRef}
                    onScroll={handleScrollEvent}
                    onMouseDown={handleMouseDown}
                    onMouseLeave={handleMouseLeave}
                    onMouseUp={handleMouseUp}
                    onMouseMove={handleMouseMove}
                    className={`
                        flex gap-2 md:gap-3 overflow-x-auto pb-4 pt-4 px-3 md:px-6 
                        snap-x snap-mandatory scrollbar-hide select-none 
                        ${isDown ? 'cursor-grabbing' : 'cursor-grab'}
                        perspective-1000
                    `}
                >
                    {currentItems.map((movie, index) => (
                        <div
                            key={`${movie.id}-${index}`}
                            onClick={() => {
                                if (!isDragging) onWatch(movie)
                            }}
                            className="
                                min-w-[150px] w-[150px] md:min-w-[200px] md:w-[200px] lg:min-w-[220px] lg:w-[220px] 
                                snap-start relative group/card cursor-pointer 
                                transition-all duration-300 transform-style-3d
                                hover:z-20
                            "
                        >
                            {/* Card Image with enhanced depth */}
                            <div className="aspect-[2/3] w-full rounded-xl overflow-hidden relative shadow-[0_8px_30px_rgba(0,0,0,0.6)] bg-gray-900 border border-white/5 group-hover/card:border-primary/50 pointer-events-none transition-all duration-500 ease-out transform-style-3d group-hover/card:shadow-[0_20px_60px_rgba(150,18,131,0.4)] group-hover/card:-translate-y-2">
                                <img
                                    src={movie.capa}
                                    alt={movie.titulo}
                                    className="w-full h-full object-cover transition-transform duration-700 group-hover/card:scale-110"
                                    loading="lazy"
                                    draggable="false"
                                />
                                {/* Gradient Overlay */}
                                <div className="absolute inset-0 bg-gradient-to-t from-black/60 via-transparent to-transparent opacity-0 group-hover/card:opacity-100 transition-opacity duration-300"></div>

                                {/* Badge */}
                                <div className="absolute top-2 left-2 flex flex-col gap-1 items-start">
                                    {(movie.rating > 4.5 || index < 3) && (
                                        <div className="bg-primary/95 backdrop-blur-md text-white text-[9px] md:text-[10px] font-bold px-2 py-0.5 rounded shadow-sm">
                                            TOP 10
                                        </div>
                                    )}
                                </div>
                            </div>

                            {/* Card Info */}
                            <div className="mt-2 text-left pointer-events-none px-0.5">
                                <h3 className="text-xs md:text-base font-medium text-gray-200 group-hover/card:text-white truncate transition-colors leading-tight">
                                    {movie.titulo}
                                </h3>
                            </div>
                        </div>
                    ))}

                    {/* Infinite Loader / Spacer */}
                    {visibleItems < items.length && (
                        <div className="min-w-[50px] flex items-center justify-center">
                            <div className="w-6 h-6 border-2 border-primary border-t-transparent rounded-full animate-spin opacity-50"></div>
                        </div>
                    )}

                    {/* Padding Right Spacer for Snap */}
                    <div className="min-w-[4px]"></div>
                </div>

                {/* Gradient Filters for Scroll Indication */}
                <div className="absolute right-0 top-0 bottom-0 w-12 md:w-24 bg-gradient-to-l from-background to-transparent pointer-events-none opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
                <div className="absolute left-0 top-0 bottom-0 w-8 md:w-16 bg-gradient-to-r from-background to-transparent pointer-events-none opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
            </div>
        </div>
    )
}

function MovieCardSimple({ movie, onClick }) {
    return (
        <div
            onClick={onClick}
            className="movie-card group relative cursor-pointer rounded-xl bg-gray-900 ring-1 ring-white/5 hover:ring-white/20 transition-all duration-300 active:scale-95 transform-style-3d hover:-translate-y-2 hover:shadow-[0_20px_40px_rgba(150,18,131,0.3)] animate-cinematic"
        >
            <div className="aspect-[2/3] w-full relative overflow-hidden rounded-xl">
                <img
                    src={movie.capa}
                    alt={movie.titulo}
                    className="h-full w-full object-cover transition-transform duration-500 group-hover:scale-110"
                    loading="lazy"
                />
                <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-transparent to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>

                {/* Badge */}
                <div className="absolute top-2 left-2">
                    <div className="bg-black/60 backdrop-blur-md text-white text-[9px] uppercase font-bold px-2 py-0.5 rounded border border-white/10">
                        {movie.categoria?.split(',')[0]}
                    </div>
                </div>
            </div>
            <div className="mt-2 text-left px-1 pb-1">
                <h3 className="text-xs md:text-sm font-medium text-gray-200 group-hover:text-white truncate transition-colors">
                    {movie.titulo}
                </h3>
            </div>
        </div>
    )
}
