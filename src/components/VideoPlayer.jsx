import { useState, useRef, useEffect } from 'react'
import { Play, Pause, Volume2, VolumeX, Maximize, Minimize, Loader2 } from 'lucide-react'

export default function VideoPlayer({ src, title, poster, initialTime = 0, onProgress }) {
    const videoRef = useRef(null)
    const progressRef = useRef(null)
    const [isPlaying, setIsPlaying] = useState(false)
    const [currentTime, setCurrentTime] = useState(0)
    const [duration, setDuration] = useState(0)
    const [volume, setVolume] = useState(1)
    const [isMuted, setIsMuted] = useState(false)
    const [isFullscreen, setIsFullscreen] = useState(false)
    const [isLoading, setIsLoading] = useState(true)
    const [showControls, setShowControls] = useState(true)
    const [controlsTimeout, setControlsTimeout] = useState(null)
    const [hasError, setHasError] = useState(false) // New error state
    const [debugMsg, setDebugMsg] = useState('')
    const initialTimeSet = useRef(false)

    useEffect(() => {
        const video = videoRef.current
        if (!video) return

        const handleLoadedMetadata = () => {
            setDuration(video.duration)
            setIsLoading(false)

            // Set initial time if provided and valid
            if (initialTime > 0 && !initialTimeSet.current) {
                video.currentTime = initialTime
                initialTimeSet.current = true
            }
        }

        // Logic to handle async initialTime update (if metadata loaded first)
        if (video.readyState >= 1 && initialTime > 0 && !initialTimeSet.current) {
            video.currentTime = initialTime
            initialTimeSet.current = true
        }

        const handleTimeUpdate = () => {
            setCurrentTime(video.currentTime)
            if (onProgress) {
                onProgress(video.currentTime, video.duration)
            }
        }

        const handleEnded = () => {
            setIsPlaying(false)
        }

        const handleWaiting = () => setIsLoading(true)
        const handleCanPlay = () => setIsLoading(false)

        const handleError = (e) => {
            console.error('Video Playback Error:', e)
            setHasError(true)
            setDebugMsg(`Erro: ${video.error?.message || 'Falha no carregamento'} (Code: ${video.error?.code})`)
            setIsLoading(false)
        }

        video.addEventListener('loadedmetadata', handleLoadedMetadata)
        video.addEventListener('timeupdate', handleTimeUpdate)
        video.addEventListener('ended', handleEnded)
        video.addEventListener('waiting', handleWaiting)
        video.addEventListener('canplay', handleCanPlay)
        video.addEventListener('error', handleError)

        return () => {
            video.removeEventListener('loadedmetadata', handleLoadedMetadata)
            video.removeEventListener('timeupdate', handleTimeUpdate)
            video.removeEventListener('ended', handleEnded)
            video.removeEventListener('waiting', handleWaiting)
            video.removeEventListener('canplay', handleCanPlay)
            video.removeEventListener('error', handleError)
        }
    }, [initialTime, onProgress])

    const togglePlay = () => {
        const video = videoRef.current
        if (video.paused) {
            video.play()
            setIsPlaying(true)
        } else {
            video.pause()
            setIsPlaying(false)
        }
    }

    const handleProgressClick = (e) => {
        const rect = progressRef.current.getBoundingClientRect()
        const pos = (e.clientX - rect.left) / rect.width
        videoRef.current.currentTime = pos * duration
    }

    const handleVolumeChange = (e) => {
        const newVolume = parseFloat(e.target.value)
        setVolume(newVolume)
        videoRef.current.volume = newVolume
        setIsMuted(newVolume === 0)
    }

    const toggleMute = () => {
        if (isMuted) {
            videoRef.current.volume = volume || 0.5
            setIsMuted(false)
        } else {
            videoRef.current.volume = 0
            setIsMuted(true)
        }
    }

    const toggleFullscreen = () => {
        const container = videoRef.current.parentElement
        if (!document.fullscreenElement) {
            container.requestFullscreen()
            setIsFullscreen(true)
        } else {
            document.exitFullscreen()
            setIsFullscreen(false)
        }
    }

    const formatTime = (time) => {
        const minutes = Math.floor(time / 60)
        const seconds = Math.floor(time % 60)
        return `${minutes}:${seconds.toString().padStart(2, '0')}`
    }

    const handleMouseMove = () => {
        setShowControls(true)
        if (controlsTimeout) clearTimeout(controlsTimeout)
        const timeout = setTimeout(() => setShowControls(false), 3000)
        setControlsTimeout(timeout)
    }

    // Keyboard shortcuts
    useEffect(() => {
        const handleKeyPress = (e) => {
            if (e.code === 'Space') {
                e.preventDefault()
                togglePlay()
            } else if (e.code === 'KeyF') {
                toggleFullscreen()
            } else if (e.code === 'KeyM') {
                toggleMute()
            }
        }

        window.addEventListener('keydown', handleKeyPress)
        return () => window.removeEventListener('keydown', handleKeyPress)
    }, [])

    // Detect if URL is an embed/iframe source (YouTube, Vimeo, etc)
    const isEmbed = src?.includes('youtube.com') || src?.includes('youtu.be') || src?.includes('vimeo.com') || src?.includes('embed')

    const getEmbedUrl = (url, startSeconds) => {
        if (!startSeconds) return url;

        let newUrl = url;
        const hasQuery = url.includes('?');
        const separator = hasQuery ? '&' : '?';

        if (url.includes('youtube.com') || url.includes('youtu.be')) {
            // YouTube: ?start=123
            return `${newUrl.replace('watch?v=', 'embed/')}${separator}start=${Math.floor(startSeconds)}`;
        } else if (url.includes('vimeo.com')) {
            // Vimeo: #t=123s
            return `${newUrl}#t=${Math.floor(startSeconds)}s`;
        } else {
            // Generic: ?t=123
            return `${newUrl}${separator}t=${Math.floor(startSeconds)}`;
        }
    }

    if (isEmbed) {
        return (
            <div className="relative w-full h-full bg-black">
                {/* Back Button Overlay */}
                <div className="absolute top-4 left-4 z-50 pointer-events-none">
                    <span className="text-white/30 font-bold text-sm tracking-widest uppercase">Dramy</span>
                </div>

                <iframe
                    src={getEmbedUrl(src, initialTime)}
                    className="w-full h-full border-0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowFullScreen
                    title={title}
                />
            </div>
        )
    }

    return (
        <div
            className="relative w-full h-full bg-black group overflow-hidden flex items-center justify-center font-sans select-none"
            onMouseMove={handleMouseMove}
            onMouseLeave={() => setShowControls(false)}
        >
            {/* Video Element */}
            <video
                ref={videoRef}
                src={src}
                poster={poster}
                className="w-full h-full object-contain"
                onClick={togglePlay}
                onContextMenu={(e) => e.preventDefault()}
                controlsList="nodownload"
                playsInline
                disablePictureInPicture
            />

            {/* ERROR MESSAGE & DEBUG */}
            {hasError && (
                <div className="absolute inset-0 flex flex-col items-center justify-center bg-black/90 z-40 p-4">
                    <div className="text-center max-w-lg">
                        <p className="text-red-500 font-bold text-xl mb-2">Erro ao reproduzir título</p>
                        <p className="text-gray-300 mb-4">{debugMsg || 'O formato do vídeo não é compatível ou o link está quebrado.'}</p>
                    </div>
                </div>
            )}

            {/* Loading Spinner */}
            {isLoading && !hasError && (
                <div className="absolute inset-0 flex items-center justify-center bg-black/50 backdrop-blur-sm z-30">
                    <Loader2 className="w-16 h-16 text-pink-500 animate-spin drop-shadow-[0_0_15px_rgba(236,72,153,0.6)]" />
                </div>
            )}

            {/* Center Play/Pause Ripple Overlay */}
            {!isPlaying && !isLoading && !hasError && (
                <div
                    className="absolute inset-0 flex items-center justify-center cursor-pointer bg-black/20 backdrop-blur-[1px] transition-all z-20 group/play"
                    onClick={togglePlay}
                >
                    <div className="relative">
                        {/* Ripple Effect */}
                        <div className="absolute inset-0 bg-pink-500 rounded-full animate-ping opacity-20"></div>
                        <div className="absolute inset-0 bg-pink-500 rounded-full animate-pulse opacity-10 blur-xl"></div>

                        {/* Button */}
                        <div className="relative w-24 h-24 rounded-full bg-pink-600/90 flex items-center justify-center backdrop-blur-md shadow-[0_0_40px_rgba(219,39,119,0.6)] border border-white/10 transform transition-transform group-hover/play:scale-110">
                            <Play className="w-10 h-10 text-white fill-white ml-2 drop-shadow-lg" />
                        </div>
                    </div>
                </div>
            )}

            {/* Floating Glass Control Bar */}
            <div className={`absolute bottom-8 left-1/2 -translate-x-1/2 w-[90%] max-w-4xl z-30 transition-all duration-500 ease-out ${showControls || !isPlaying ? 'opacity-100 translate-y-0' : 'opacity-0 translate-y-8'}`}>
                <div className="bg-black/40 backdrop-blur-xl border border-white/10 rounded-2xl p-4 shadow-2xl">

                    {/* Progress Bar (Attached to top of glass) */}
                    <div className="flex items-center gap-3 mb-2 px-1">
                        <span className="text-xs font-medium text-pink-200 w-10 text-right">{formatTime(currentTime)}</span>

                        <div
                            ref={progressRef}
                            className="relative flex-1 h-1.5 bg-white/10 rounded-full cursor-pointer group/progress"
                            onClick={handleProgressClick}
                        >
                            {/* Buffer/Track */}
                            <div className="absolute inset-0 rounded-full overflow-hidden">
                                <div className="h-full bg-white/5 w-full"></div>
                            </div>

                            {/* Fill */}
                            <div
                                className="absolute top-0 left-0 h-full bg-gradient-to-r from-pink-600 to-pink-400 rounded-full transition-all group-hover/progress:h-2 -mt-[1px] shadow-[0_0_10px_rgba(236,72,153,0.7)]"
                                style={{ width: `${(currentTime / duration) * 100}%` }}
                            >
                                {/* Scrubber Handle */}
                                <div className="absolute right-0 top-1/2 -translate-y-1/2 w-4 h-4 bg-white rounded-full opacity-0 group-hover/progress:opacity-100 transition-opacity shadow-lg scale-110"></div>
                            </div>
                        </div>

                        <span className="text-xs font-medium text-white/50 w-10">{formatTime(duration)}</span>
                    </div>

                    {/* Controls Row */}
                    <div className="flex items-center justify-between px-2">
                        {/* Left: Volume */}
                        <div className="flex items-center gap-4 group/volume">
                            <button
                                onClick={toggleMute}
                                className="text-white/80 hover:text-pink-400 transition-colors"
                            >
                                {isMuted ? <VolumeX className="w-5 h-5" /> : <Volume2 className="w-5 h-5" />}
                            </button>
                            <div className="w-0 group-hover/volume:w-20 overflow-hidden transition-all duration-300">
                                <input
                                    type="range"
                                    min="0"
                                    max="1"
                                    step="0.1"
                                    value={isMuted ? 0 : volume}
                                    onChange={handleVolumeChange}
                                    className="w-16 h-1 bg-white/20 rounded-lg appearance-none cursor-pointer accent-pink-500"
                                />
                            </div>
                        </div>

                        {/* Center: Play (Mini) */}
                        <button
                            onClick={togglePlay}
                            className="w-10 h-10 rounded-full bg-pink-500/20 hover:bg-pink-500 text-pink-500 hover:text-white flex items-center justify-center transition-all transform hover:scale-105"
                        >
                            {isPlaying ? <Pause className="w-5 h-5 fill-current" /> : <Play className="w-5 h-5 fill-current ml-0.5" />}
                        </button>

                        {/* Right: Fullscreen */}
                        <button
                            onClick={toggleFullscreen}
                            className="text-white/80 hover:text-pink-400 transition-colors"
                        >
                            {isFullscreen ? <Minimize className="w-5 h-5" /> : <Maximize className="w-5 h-5" />}
                        </button>
                    </div>
                </div>
            </div>

            {/* Watermark (Top Right) */}
            <div className="absolute top-6 right-8 pointer-events-none z-20">
                <h1 className="text-lg font-bold text-white/10 tracking-[0.5em] uppercase mix-blend-overlay">Dramy</h1>
            </div>
        </div>
    )
}
