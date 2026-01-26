import { useEffect, useState, useRef, useMemo } from 'react'
import { supabase } from '@/lib/supabase'
import { Play, ChevronRight, ChevronLeft, Clock } from 'lucide-react'
import { useNavigate } from 'react-router-dom'
import Hero from '@/components/Hero'
import ImageWithFallback from '@/components/ImageWithFallback'


const CATEGORIES = ["Todos", "Doramas", "Séries", "+18", "Filmes"]
const ITEMS_PER_PAGE = 24

// Utility: Fisher-Yates Shuffle for content rotation
function shuffleArray(array) {
    const arr = [...array];
    for (let i = arr.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [arr[i], arr[j]] = [arr[j], arr[i]];
    }
    return arr;
}

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
            const { data: seriesData } = await supabase
                .from('series')
                .select('*')
                .limit(3000)
                .order('created_at', { ascending: false })

            // 1b. Fetch Filmes (Movies)
            const { data: filmesData } = await supabase
                .from('filmes')
                .select('*')
                .limit(3000)
                .order('created_at', { ascending: false })

            // Map and Merge Content
            const allContent = [
                ...(seriesData || []).map(s => ({
                    id: s.id,
                    titulo: s.title,
                    capa: s.poster_url,
                    categoria: s.genre,
                    descricao: s.description,
                    rating: s.rating,
                    type: 'series'
                })),
                ...(filmesData || []).map(f => ({
                    id: f.id,
                    titulo: f.titulo,
                    capa: f.capa,
                    categoria: f.categoria,
                    descricao: f.descricao,
                    rating: 0, // filmes might not have rating column
                    type: 'movie',
                    is_dubbed: f.is_dubbed // Database column
                }))
            ]

            // 2. Fetch Banners
            const { data: bannersData, error: bannersError } = await supabase
                .from('banners')
                .select('*')
                .eq('ativo', 1)

            let finalBanners = []

            if (bannersData && bannersData.length > 0) {
                const joinedBanners = bannersData.map(b => {
                    const relatedItem = allContent.find(m => m.id === b.filme_id)
                    return {
                        ...b,
                        filmes: relatedItem
                    }
                }).filter(b => b.filmes)
                finalBanners = joinedBanners
            }

            // Fallback: If no banners, use top 5 items
            if (finalBanners.length === 0 && allContent.length > 0) {
                finalBanners = allContent.slice(0, 5).map(m => ({
                    id: m.id,
                    filme_id: m.id,
                    imagem: m.capa,
                    ativo: true,
                    filmes: m,
                    titulo: m.titulo,
                    descricao: m.descricao
                }))
            }

            setMovies(allContent)
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

    // --- HOOKS MOVED TO TOP LEVEL TO FIX CRASH ---
    const shuffledTrending = useMemo(() => shuffleArray([...movies]).slice(0, 40), [movies])
    const newReleases = useMemo(() => movies.filter(m => m.categoria?.toLowerCase().includes('novo-lancamento') || m.titulo?.toLowerCase().includes('novo')).slice(0, 30), [movies])
    const shuffledStartHere = useMemo(() => shuffleArray(movies.filter(m => m.categoria?.includes('Curta') || m.rating > 4.5)), [movies])
    const shuffledDubbed = useMemo(() => shuffleArray(movies.filter(m => m.is_dubbed || m.categoria?.toLowerCase().includes('dublado') || m.titulo?.toLowerCase().includes('dublado'))), [movies])
    const shuffledRomance = useMemo(() => shuffleArray(movies.filter(m => m.categoria?.match(/romance|amor|paixão/i))), [movies])
    const shuffledVampires = useMemo(() => shuffleArray(movies.filter(m => m.categoria?.toLowerCase().match(/vampiro|lobo|werewolf|sobrenatural|dracula/i))), [movies])
    const shuffledIdentity = useMemo(() => shuffleArray(movies.filter(m => m.categoria?.toLowerCase().match(/identidade|escondida|secreto|boss|chefe|ceo/i))), [movies])
    const shuffledFamily = useMemo(() => shuffleArray(movies.filter(m => m.categoria?.toLowerCase().match(/bebe|gravi|filho|baby|pregnant|mãe|pai/i))), [movies])
    const shuffledTaboo = useMemo(() => shuffleArray(movies.filter(m => m.categoria?.toLowerCase().match(/tabu|proibido|traição|vingança/i))), [movies])
    const shuffledBLGL = useMemo(() => shuffleArray(movies.filter(m => m.categoria?.toLowerCase().match(/bl|gl|lgbt|boys|girls/i))), [movies])
    const shuffledDrama = useMemo(() => shuffleArray(movies.filter(m => m.categoria?.match(/drama|vingança|mistério/i))), [movies])
    const shuffledTopRated = useMemo(() => shuffleArray(movies.filter(m => m.rating >= 4.7)), [movies])

    if (loading) {
        return (
            <div className="min-h-screen bg-background text-white font-sans overflow-hidden">
                {/* Skeleton Hero */}
                <div className="w-full h-[60vh] md:h-[80vh] bg-gray-900/40 relative animate-pulse flex items-end">
                    <div className="w-full p-6 md:p-12 pb-24 space-y-4 bg-gradient-to-t from-background to-transparent">
                        <div className="h-4 w-24 bg-gray-800 rounded-full mb-4"></div>
                        <div className="h-8 md:h-12 w-2/3 md:w-1/3 bg-gray-800 rounded-lg"></div>
                        <div className="h-4 w-full md:w-1/2 bg-gray-800 rounded-lg"></div>
                        <div className="flex gap-4 pt-4">
                            <div className="h-12 w-32 bg-gray-800 rounded-lg"></div>
                            <div className="h-12 w-12 bg-gray-800 rounded-full"></div>
                        </div>
                    </div>
                </div>
                {/* Skeleton Rows */}
                <div className="container mx-auto px-4 -mt-20 relative z-10 space-y-8">
                    {[1, 2, 3].map((i) => (
                        <div key={i} className="space-y-4">
                            <div className="h-6 w-48 bg-gray-800/60 rounded animate-pulse"></div>
                            <div className="flex gap-4 overflow-hidden">
                                {[1, 2, 3, 4, 5, 6].map((j) => (
                                    <div key={j} className="h-48 md:h-64 w-32 md:w-44 bg-gray-800/40 rounded-xl flex-shrink-0 animate-pulse"></div>
                                ))}
                            </div>
                        </div>
                    ))}
                </div>
            </div>
        )
    }

    return (
        <div className="min-h-screen bg-background text-white font-sans overflow-x-hidden relative">
            {/* Surreal Background */}
            <div className="aurora-bg"></div>

            {/* HERO SECTION */}
            <Hero banners={banners} movies={movies} history={history} />

            <div className="container mx-auto px-2 pt-4 pb-24 md:pb-8 -mt-16 relative z-30">

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

                            {/* SECTION: Trending (Shuffled for variety) */}
                            <CuratedSection
                                title="Em alta"
                                items={shuffledTrending}
                                onWatch={handleWatch}
                                titleSize="text-3xl md:text-5xl"
                            />

                            {/* SECTION: New Releases (Strict Order - Prioritize New Content) */}
                            <CuratedSection
                                title="Chegaram agora"
                                items={newReleases}
                                onWatch={handleWatch}
                                titleSize="text-3xl md:text-5xl"
                            />

                            {/* SECTION: Start Here (Filtered & Shuffled can include shorter/high rated) */}
                            <CuratedSection
                                title="Comece por aqui"
                                items={shuffledStartHere}
                                onWatch={handleWatch}
                                titleSize="text-3xl md:text-5xl"
                            />

                            {/* Dublados (Shuffled) */}
                            <CuratedSection
                                title="Destaques Dublados"
                                items={shuffledDubbed}
                                onWatch={handleWatch}
                                titleSize="text-3xl md:text-5xl"
                            />

                            {/* Romance (Shuffled) */}
                            <CuratedSection
                                title="Romances intensos"
                                items={shuffledRomance}
                                onWatch={handleWatch}
                                titleSize="text-3xl md:text-5xl"
                            />

                            {/* Lobos & Vampiros (Shuffled) */}
                            <CuratedSection
                                title="Lobos & Vampiros"
                                items={shuffledVampires}
                                onWatch={handleWatch}
                                titleSize="text-3xl md:text-5xl"
                            />

                            {/* Identidade Escondida (Shuffled) */}
                            <CuratedSection
                                title="Segredos & Identidades"
                                items={shuffledIdentity}
                                onWatch={handleWatch}
                                titleSize="text-3xl md:text-5xl"
                            />

                            {/* Bebês (Shuffled) */}
                            <CuratedSection
                                title="Herdeiros & Família"
                                items={shuffledFamily}
                                onWatch={handleWatch}
                                titleSize="text-3xl md:text-5xl"
                            />

                            {/* Tabu (Shuffled) */}
                            <CuratedSection
                                title="Entre o Amor e o Proibido"
                                items={shuffledTaboo}
                                onWatch={handleWatch}
                                titleSize="text-3xl md:text-5xl"
                            />

                            {/* BL & GL (Shuffled) */}
                            <CuratedSection
                                title="Amor Sem Barreiras (BL/GL)"
                                items={shuffledBLGL}
                                onWatch={handleWatch}
                                titleSize="text-3xl md:text-5xl"
                            />

                            {/* Drama/Vingança (Shuffled) */}
                            <CuratedSection
                                title="Histórias de poder"
                                items={shuffledDrama}
                                onWatch={handleWatch}
                                titleSize="text-3xl md:text-5xl"
                            />

                            {/* SECTION: Top Rated (High rating, Strict or Shuffled) */}
                            <CuratedSection
                                title="Aclamados pela crítica"
                                items={shuffledTopRated}
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
                                        {/* Column 1 to 10 - Simplified Rendering Loop could be better here but keeping structure */}
                                        {[...Array(10)].map((_, colIndex) => (
                                            <div key={colIndex} className="flex flex-col gap-2 min-w-[160px] md:min-w-[220px]">
                                                {movies.slice(colIndex * 4, (colIndex + 1) * 4).map((movie) => (
                                                    <div
                                                        key={movie.id}
                                                        onClick={() => handleWatch(movie)}
                                                        className="aspect-[2/3] rounded-lg overflow-hidden cursor-pointer hover:scale-105 transition-transform duration-300 shadow-lg hover:shadow-xl"
                                                    >
                                                        <ImageWithFallback
                                                            src={movie.capa}
                                                            alt={movie.titulo}
                                                            className="w-full h-full object-cover"
                                                            fallbackText={movie.titulo}
                                                        />
                                                    </div>
                                                ))}
                                            </div>
                                        ))}
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
                                <ImageWithFallback
                                    src={movie.capa}
                                    alt={movie.titulo}
                                    className="w-full h-full object-cover transition-transform duration-700 group-hover/card:scale-110"
                                    loading="lazy"
                                    fallbackText={movie.titulo}
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
                <ImageWithFallback
                    src={movie.capa}
                    alt={movie.titulo}
                    className="h-full w-full object-cover transition-transform duration-500 group-hover:scale-110"
                    loading="lazy"
                    fallbackText={movie.titulo}
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
