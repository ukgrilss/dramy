import { useState, useEffect } from 'react'
import { Play, Info, ChevronRight, ChevronLeft, Plus } from 'lucide-react'
import { useNavigate } from 'react-router-dom'

export default function Hero({ banners, movies, history = [] }) {
    const navigate = useNavigate()
    const [currentBannerIndex, setCurrentBannerIndex] = useState(0)
    const [isHovered, setIsHovered] = useState(false)
    const [touchStart, setTouchStart] = useState(null)
    const [touchEnd, setTouchEnd] = useState(null)
    const [isMounted, setIsMounted] = useState(false)

    // Minimum swipe distance (in px) 
    const minSwipeDistance = 50

    const onTouchStart = (e) => {
        setTouchEnd(null) // otherwise the swipe is fired even with usual touch events
        setTouchStart(e.targetTouches[0].clientX)
    }

    const onTouchMove = (e) => setTouchEnd(e.targetTouches[0].clientX)

    const onTouchEnd = () => {
        if (!touchStart || !touchEnd) return
        const distance = touchStart - touchEnd
        const isLeftSwipe = distance > minSwipeDistance
        const isRightSwipe = distance < -minSwipeDistance
        if (isLeftSwipe || isRightSwipe) {
            if (isLeftSwipe) nextBanner()
            if (isRightSwipe) prevBanner()
        }
    }

    // Mount animation trigger
    useEffect(() => {
        setIsMounted(true)
    }, [])

    // Auto-rotate
    useEffect(() => {
        if (banners.length === 0 || isHovered) return
        const interval = setInterval(() => {
            setCurrentBannerIndex((prev) => (prev + 1) % banners.length)
        }, 6000)
        return () => clearInterval(interval)
    }, [banners, isHovered])

    const nextBanner = () => {
        setCurrentBannerIndex((prev) => (prev + 1) % banners.length)
    }

    const prevBanner = () => {
        setCurrentBannerIndex((prev) => (prev - 1 + banners.length) % banners.length)
    }

    if (!banners || banners.length === 0) return null

    const activeBanner = banners[currentBannerIndex]
    const bannerMovie = activeBanner?.filmes || activeBanner

    // Fallback logic
    const safeMovies = Array.isArray(movies) ? movies : []
    const firstMovie = safeMovies.length > 0 ? safeMovies[0] : null

    // Check progress
    const activeItem = bannerMovie || firstMovie
    const historyItem = activeItem ? history.find(h => h.series_id === activeItem.id || h.movie_id === activeItem.id || h.id === activeItem.id) : null
    const hasProgress = historyItem && historyItem.progress > 0

    const bannerImage = activeBanner?.imagem || activeItem?.capa
    const bannerTitle = activeItem?.titulo || "Destaques Dramy"
    const bannerDesc = activeItem?.sinopse || activeItem?.descricao || "Assista aos melhores filmes e séries."
    const bannerYear = activeItem?.ano || activeItem?.created_at ? new Date(activeItem.created_at).getFullYear() : "2024"
    const bannerRating = activeItem?.nota || activeItem?.rating || "10"

    const handleWatch = (movie) => {
        if (movie?.id) {
            navigate(`/watch/${movie.id}`, { state: { movie } })
        }
    }

    return (
        <div
            className={`relative min-h-[550px] w-full overflow-hidden group transition-all duration-1000 ${isMounted ? 'opacity-100 scale-100' : 'opacity-0 scale-[0.98]'
                }`}
            onMouseEnter={() => setIsHovered(true)}
            onMouseLeave={() => setIsHovered(false)}
            onTouchStart={onTouchStart}
            onTouchMove={onTouchMove}
            onTouchEnd={onTouchEnd}
        >
            {/* Background Image Layer */}
            <div className="absolute inset-0">
                <div key={currentBannerIndex} className="absolute inset-0 animate-fadeIn">
                    {/* Backdrop Blur Layer for "Filling" */}
                    <div
                        className="absolute inset-0 bg-cover bg-center blur-3xl opacity-50 scale-110"
                        style={{ backgroundImage: `url(${bannerImage})` }}
                    ></div>

                    {/* Main Image with continuous breathing */}
                    <img
                        src={bannerImage}
                        className="h-full w-full object-cover object-center"
                        style={{
                            animation: 'heroBreath 20s ease-in-out infinite',
                            transformOrigin: 'center center'
                        }}
                        alt="Hero"
                    />

                    {/* Cinematic Gradients - Extended for seamless blend */}
                    <div className="absolute inset-0 bg-gradient-to-t from-[#080808] via-[#080808]/40 to-transparent"></div>
                    <div className="absolute inset-0 bg-gradient-to-r from-[#080808] via-[#080808]/60 to-transparent"></div>
                    <div className="absolute bottom-0 h-64 w-full bg-gradient-to-t from-[#080808] via-[#080808]/90 to-transparent"></div>
                </div>
            </div>

            {/* Content Layer */}
            <div className="absolute bottom-0 left-0 z-20 w-full p-6 md:p-12 lg:p-20 pb-20 md:pb-24 bg-gradient-to-t from-black via-black/60 to-transparent">
                <div className="max-w-3xl space-y-4 md:space-y-6">
                    {/* Metadata Badges */}
                    <div
                        className={`flex items-center gap-3 transition-all duration-700 ${isMounted ? 'opacity-100 translate-y-0' : 'opacity-0 translate-y-4'
                            }`}
                        style={{ transitionDelay: '200ms' }}
                    >
                        <span className="bg-primary/90 backdrop-blur-md text-white px-3 py-1 rounded-full text-[10px] md:text-xs font-bold uppercase tracking-widest shadow-lg shadow-primary/20 ring-1 ring-white/20">
                            Destaque
                        </span>
                        <span className="text-green-400 font-bold text-sm drop-shadow-md">
                            {bannerRating} pontos
                        </span>
                        <span className="text-gray-200 text-sm drop-shadow-md font-medium">
                            {bannerYear}
                        </span>
                    </div>

                    {/* Title - Optimized for Mobile */}
                    <h1
                        className={`text-3xl sm:text-4xl md:text-6xl lg:text-7xl font-black text-white drop-shadow-2xl leading-[1.1] tracking-tight transition-all duration-700 ${isMounted ? 'opacity-100 translate-y-0' : 'opacity-0 translate-y-6'
                            }`}
                        style={{ transitionDelay: '400ms' }}
                    >
                        {bannerTitle}
                    </h1>

                    {/* Description */}
                    <p
                        className={`text-gray-200/90 text-sm md:text-lg line-clamp-3 md:line-clamp-2 max-w-2xl drop-shadow-md font-medium leading-relaxed transition-all duration-700 ${isMounted ? 'opacity-100 translate-y-0' : 'opacity-0 translate-y-4'
                            }`}
                        style={{ transitionDelay: '600ms' }}
                    >
                        {bannerDesc}
                    </p>

                    {/* Action Buttons - Mobile Optimized */}
                    <div
                        className={`flex items-center gap-3 pt-4 transition-all duration-700 ${isMounted ? 'opacity-100 translate-y-0' : 'opacity-0 translate-y-4'
                            }`}
                        style={{ transitionDelay: '800ms' }}
                    >
                        <button
                            onClick={() => handleWatch(bannerMovie || firstMovie)}
                            className="flex-1 md:flex-none bg-white text-black hover:bg-white/90 px-6 py-3.5 rounded-xl font-bold text-base md:text-lg transition-all flex items-center justify-center gap-2 transform active:scale-95 shadow-xl shadow-white/10"
                        >
                            <Play className="fill-black w-5 h-5 md:w-6 md:h-6" />
                            {hasProgress ? 'Continuar' : 'Assistir'}
                        </button>

                        <button
                            onClick={() => navigate(`/title/${activeItem?.id}`)}
                            className="bg-white/10 backdrop-blur-md border border-white/20 hover:bg-white/20 text-white px-4 py-3.5 rounded-xl font-bold text-base md:text-lg transition-all flex items-center justify-center gap-2 transform active:scale-95"
                        >
                            <Info className="w-5 h-5 md:w-6 md:h-6" />
                        </button>
                    </div>
                </div>
            </div>

            {/* Navigation Arrows (Desktop) */}
            <button
                onClick={prevBanner}
                className="absolute left-4 top-1/2 -translate-y-1/2 bg-black/20 hover:bg-primary/80 backdrop-blur-sm p-3 rounded-full transition-all z-30 opacity-0 group-hover:opacity-100 hidden md:block border border-white/10"
            >
                <ChevronLeft className="w-8 h-8 text-white" />
            </button>
            <button
                onClick={nextBanner}
                className="absolute right-4 top-1/2 -translate-y-1/2 bg-black/20 hover:bg-primary/80 backdrop-blur-sm p-3 rounded-full transition-all z-30 opacity-0 group-hover:opacity-100 hidden md:block border border-white/10"
            >
                <ChevronRight className="w-8 h-8 text-white" />
            </button>

            {/* Pagination Dots */}
            <div className="absolute bottom-8 right-8 z-30 flex gap-2">
                {banners.map((_, idx) => (
                    <button
                        key={idx}
                        onClick={() => setCurrentBannerIndex(idx)}
                        className={`h-1.5 transition-all duration-300 rounded-full ${currentBannerIndex === idx
                            ? 'w-8 bg-white shadow-glow'
                            : 'w-1.5 bg-white/30 hover:bg-white/60'
                            }`}
                    />
                ))}
            </div>
        </div>
    )
}
