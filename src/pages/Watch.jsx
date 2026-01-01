
import { useEffect, useState, useRef } from 'react'
import { useParams, useNavigate, useLocation, Link } from 'react-router-dom'
import { supabase } from '@/lib/supabase'
import { useAuth } from '@/contexts/AuthContext'
import { ArrowLeft, Loader2, Lock } from 'lucide-react'
import VideoPlayer from '@/components/VideoPlayer'

export default function Watch() {
    const { id } = useParams()
    const navigate = useNavigate()
    const location = useLocation()

    // State
    const [movie, setMovie] = useState(null)
    const [loading, setLoading] = useState(true)
    const [secureUrl, setSecureUrl] = useState(null)
    const [hasAccess, setHasAccess] = useState(null)
    const [initialTime, setInitialTime] = useState(0)
    const [saveStatus, setSaveStatus] = useState('Idle')

    // Refs
    const intervalRef = useRef(null)
    const lastSavedTime = useRef(0)

    // Auth
    const { user, userRole, profile, loading: authLoading, decrementTrial } = useAuth()

    // 1. Fetch Content
    useEffect(() => {
        if (!id || id === 'undefined') return

        const fetchContent = async () => {
            try {
                // A. Try as Series
                const { data: seriesData } = await supabase
                    .from('series')
                    .select('*, episodes(*)')
                    .eq('id', id)
                    .maybeSingle()

                if (seriesData) {
                    const episodes = seriesData.episodes?.sort((a, b) => a.episode_number - b.episode_number) || []
                    const firstEpisode = episodes[0]

                    setMovie({
                        id: seriesData.id,
                        titulo: seriesData.title,
                        capa: seriesData.poster_url,
                        description: seriesData.description,
                        vimeo_id: firstEpisode?.vimeo_id,
                        video_url: firstEpisode?.video_url,
                        isSeries: true,
                        episodes: episodes,
                        currentEpisode: firstEpisode
                    })

                    // Fetch History for Series
                    if (user) {
                        const { data: history } = await supabase
                            .from('watch_history')
                            .select('progress_seconds')
                            .eq('user_id', user.id)
                            .eq('series_id', seriesData.id)
                            .maybeSingle()

                        if (history?.progress_seconds) {
                            setInitialTime(history.progress_seconds)
                        }
                    }

                } else {
                    // B. Try as Legacy Movie
                    const { data: movieData } = await supabase
                        .from('filmes')
                        .select('*')
                        .eq('id', id)
                        .maybeSingle()

                    if (movieData) {
                        setMovie(movieData)

                        // Fetch History for Movie
                        if (user) {
                            const { data: history } = await supabase
                                .from('watch_history')
                                .select('progress_seconds')
                                .eq('user_id', user.id)
                                .eq('movie_id', movieData.id)
                                .maybeSingle()

                            if (history?.progress_seconds) {
                                setInitialTime(history.progress_seconds)
                            }
                        }
                    }
                }
            } catch (err) {
                console.error('Watch: fetch error', err)
            } finally {
                setLoading(false)
            }
        }
        fetchContent()
    }, [id, user])

    // 2. Check Access
    useEffect(() => {
        if (authLoading) return

        if (!user) {
            setHasAccess(false)
            return
        }

        if (userRole === 'admin' || profile?.role === 'admin') {
            setHasAccess(true)
            return
        }

        if (profile) {
            const hasSub = profile.subscription_active === true
            const isTrial = profile.trial_active === true

            if (hasSub) {
                setHasAccess(true)
                return
            }

            if (isTrial && (profile.trial_balance === undefined || profile.trial_balance > 0)) {
                setHasAccess(true)
            } else {
                setHasAccess(false)
            }
        } else {
            setHasAccess(false)
        }
    }, [user, userRole, profile, authLoading])

    // Unified Progress State
    const progressRef = useRef(0)
    const durationRef = useRef(0)
    const lastProgressEvent = useRef(Date.now())

    // Update progressRef when initialTime loads
    useEffect(() => {
        if (initialTime > 0) {
            progressRef.current = initialTime
            setSaveStatus(`Resuming at ${initialTime}s`)
        }
    }, [initialTime])

    // 4. Player Event Handler (Syncs real data)
    const handleProgress = (currentTime, duration) => {
        progressRef.current = currentTime
        durationRef.current = duration
        lastProgressEvent.current = Date.now()
    }

    // 5. Universal Progress Saver & Fallback Timer
    useEffect(() => {
        if (!user || !movie?.id || !hasAccess) return

        const timer = setInterval(async () => {
            // Check if we are receiving events (Native Player) or need to simulate (Embed)
            const timeSinceLastEvent = Date.now() - lastProgressEvent.current
            const isEmbedFallback = timeSinceLastEvent > 2000 // If no event for 2s, assume embed/simulated

            if (isEmbedFallback) {
                // Increment artificially
                progressRef.current += 1
            }

            // Save Condition: Only save if we have moved meaningful amount
            const currentTime = progressRef.current
            if (Math.abs(currentTime - lastSavedTime.current) >= 2) {
                lastSavedTime.current = currentTime
                setSaveStatus(isEmbedFallback ? 'Saving (Fallback)...' : 'Saving (Native)...')

                try {
                    const { error } = await supabase.rpc('save_watch_progress', {
                        p_series_id: movie.isSeries ? movie.id : null,
                        p_movie_id: !movie.isSeries ? movie.id : null,
                        p_episode_id: movie.currentEpisode?.id || null,
                        p_progress: Math.floor(currentTime),
                        p_total: Math.floor(durationRef.current || 0)
                    })

                    if (error) throw error
                    setSaveStatus(`Saved at ${Math.floor(currentTime)}s`)
                } catch (err) {
                    console.error('Error saving progress:', err)
                    setSaveStatus(`Error: ${err.message}`)
                }
            }
        }, 1000) // Run every second

        return () => clearInterval(timer)
    }, [user, userRole, movie, hasAccess])

    // 3. Heartbeat Logic (Consume Usage)
    useEffect(() => {
        // Only run if user is in trial mode and has access
        if (!user || !profile?.trial_active || profile?.subscription_active || !hasAccess) {
            if (intervalRef.current) clearInterval(intervalRef.current)
            return
        }

        // Heartbeat interval (5 seconds)
        // Adjust strictness: currently runs if component mounted (simulating 'playing')
        // In a real player, we'd bind this to onPlay/onPause events
        intervalRef.current = setInterval(() => {
            decrementTrial(5) // Deduct 5 seconds
        }, 5000)

        return () => {
            if (intervalRef.current) clearInterval(intervalRef.current)
        }
    }, [user, profile, hasAccess, decrementTrial])


    // 4. Generate URL
    useEffect(() => {
        if (!movie || !hasAccess || !user) return

        const generateUrl = async () => {
            // A. Hnadle Vimeo ID
            if (movie.vimeo_id) {
                const parts = movie.vimeo_id.split('/')
                if (parts.length === 2) {
                    setSecureUrl(`https://player.vimeo.com/video/${parts[0]}?h=${parts[1]}&title=0&byline=0&portrait=0`)
                } else {
                    setSecureUrl(`https://player.vimeo.com/video/${movie.vimeo_id}?title=0&byline=0&portrait=0`)
                }
                return
            }

            // B. Legacy URL
            const rawUrl = movie.link || movie.video_url
            if (!rawUrl) return

            try {
                if (rawUrl.startsWith('http')) {
                    setSecureUrl(rawUrl)
                } else {
                    const path = rawUrl.replace(/^filmes\//, '')
                    const { data } = await supabase.storage
                        .from('filmes')
                        .createSignedUrl(path, 3600)
                    if (data?.signedUrl) {
                        setSecureUrl(data.signedUrl)
                    }
                }
            } catch (err) {
                console.error('Watch: URL gen error', err)
            }
        }
        generateUrl()
    }, [movie, hasAccess, user])

    // --- RENDER FALLBACKS ---
    if (loading || authLoading) {
        return (
            <div className="flex h-screen w-full items-center justify-center bg-black">
                <Loader2 className="h-10 w-10 animate-spin text-primary" />
            </div>
        )
    }

    if (!movie) {
        return (
            <div className="flex h-screen flex-col items-center justify-center bg-black text-white">
                <h2 className="text-xl font-bold mb-4">Título não encontrado</h2>
                <button onClick={() => navigate('/')} className="text-primary hover:underline">Voltar</button>
            </div>
        )
    }

    // --- MAIN RENDER ---
    const isLocked = !user || hasAccess === false

    return (
        <div className="fixed inset-0 bg-black z-50 font-sans">
            {/* Header */}
            <div className="absolute top-0 left-0 w-full p-6 flex items-center justify-between z-50 pointer-events-none">
                <button
                    onClick={() => navigate('/')}
                    className="pointer-events-auto bg-black/40 backdrop-blur-md p-3 rounded-full hover:bg-pink-600/80 text-white border border-white/10 transition-all"
                >
                    <ArrowLeft className="w-6 h-6" />
                </button>
            </div>

            {/* Content Container */}
            <div className="relative w-full h-full">

                {isLocked ? (
                    /* LOCKED OVERLAY */
                    <div className="absolute inset-0 z-40 flex items-center justify-center">
                        <div className="absolute inset-0">
                            <img
                                src={movie.capa}
                                className="w-full h-full object-cover opacity-20"
                                alt="Poster"
                            />
                            <div className="absolute inset-0 bg-black/60 backdrop-blur-sm" />
                        </div>

                        <div className="relative z-50 max-w-md w-full mx-4 bg-gray-900/90 border border-white/10 p-8 rounded-2xl text-center shadow-2xl">
                            <div className="w-16 h-16 bg-primary/20 rounded-full flex items-center justify-center mx-auto mb-6">
                                <Lock className="w-8 h-8 text-primary" />
                            </div>

                            <h2 className="text-2xl font-bold text-white mb-2">
                                {(profile?.trial_balance <= 0 && profile?.trial_started_at) ? 'Seu Tempo Acabou! 😢' : 'Conteúdo Bloqueado 🔒'}
                            </h2>
                            <p className="text-gray-400 mb-6">
                                {(profile?.trial_balance <= 0 && profile?.trial_started_at)
                                    ? 'Espero que tenha gostado dos 10 minutos grátis. Assine agora para continuar assistindo.'
                                    : 'Você ainda não tem acesso a este conteúdo. Assine um de nossos planos para liberar o acesso imediato.'
                                }
                            </p>

                            {!user ? (
                                <div className="space-y-3">
                                    <Link to="/register?trial=true" className="block w-full bg-primary py-3 rounded-lg font-bold text-white hover:bg-primary/90">
                                        Criar Conta Grátis
                                    </Link>
                                    <Link to="/login" className="block w-full py-3 text-sm text-gray-400 hover:text-white">
                                        Já tenho conta
                                    </Link>
                                </div>
                            ) : (
                                <Link to="/planos" className="block w-full bg-primary py-3 rounded-lg font-bold text-white hover:bg-primary/90 animate-pulse">
                                    {(profile?.trial_balance <= 0 && profile?.trial_started_at) ? 'Escolher Plano e Continuar' : 'Liberar Acesso Agora'}
                                </Link>
                            )}
                        </div>
                    </div>
                ) : (
                    /* UNLOCKED PLAYER */
                    secureUrl ? (
                        <>
                            <div className="absolute top-8 right-8 z-[60] pointer-events-none select-none opacity-50">
                                <span className="text-white/30 text-xl font-bold font-mono tracking-widest uppercase" style={{ textShadow: '0 2px 4px rgba(0,0,0,0.5)' }}>
                                    dramio
                                </span>
                            </div>
                            <VideoPlayer
                                src={secureUrl}
                                title={movie.titulo}
                                poster={movie.capa}
                                initialTime={initialTime}
                                onProgress={handleProgress}
                            />
                        </>
                    ) : (
                        <div className="flex h-full items-center justify-center flex-col">
                            <Loader2 className="h-8 w-8 animate-spin text-primary mr-2 mb-4" />
                            <span className="text-white">Preparando Player...</span>
                        </div>
                    )
                )}
            </div>
        </div>
    )
}
