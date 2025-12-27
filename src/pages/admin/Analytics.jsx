
import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'
import { BarChart3, TrendingUp, Users, Eye, Play, Clock, ArrowUpRight } from 'lucide-react'
import { LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer, BarChart, Bar } from 'recharts'

export default function Analytics() {
    const [loading, setLoading] = useState(true)
    const [stats, setStats] = useState({
        totalViews: 0,
        activeUsers7d: 0,
        mostWatched: [],
        dailyViews: []
    })

    useEffect(() => {
        fetchAnalytics()
    }, [])

    const fetchAnalytics = async () => {
        try {
            setLoading(true)

            // 1. Fetch Video Progress (Views)
            const { data: progressData, error: progressError } = await supabase
                .from('video_progress')
                .select('*')
                .order('updated_at', { ascending: false })

            if (progressError && progressError.code !== '42P01') throw progressError
            // 42P01 = undefined table, handle gracefully if video_progress doesn't exist yet

            const progress = progressData || []

            // A. Daily Views (Last 7 days)
            const last7Days = [...Array(7)].map((_, i) => {
                const d = new Date()
                d.setDate(d.getDate() - i)
                return d.toISOString().split('T')[0]
            }).reverse()

            const dailyViews = last7Days.map(date => ({
                date: new Date(date).toLocaleDateString('pt-BR', { day: '2-digit', month: '2-digit' }),
                views: progress.filter(p => p.updated_at.startsWith(date)).length
            }))

            // B. Active Users (Last 7 days)
            const activeUsersSet = new Set(
                progress
                    .filter(p => p.updated_at >= last7Days[0])
                    .map(p => p.user_id)
            )

            // C. Most Watched (Mocking series names mostly if we don't join, but lets try to group by video_id)
            // Ideally we join with series/episodes, but for now lets just count by video_id
            const viewsByVideo = {}
            progress.forEach(p => {
                viewsByVideo[p.video_id] = (viewsByVideo[p.video_id] || 0) + 1
            })

            const sortedVideos = Object.entries(viewsByVideo)
                .sort(([, a], [, b]) => b - a)
                .slice(0, 5)
                .map(([id, count]) => ({
                    id,
                    title: `Conteúdo #${id.substring(0, 8)}`, // Placeholder name until we fetch titles
                    count
                }))

            setStats({
                totalViews: progress.length,
                activeUsers7d: activeUsersSet.size,
                dailyViews,
                mostWatched: sortedVideos
            })

        } catch (error) {
            console.error('Error fetching analytics:', error)
        } finally {
            setLoading(false)
        }
    }

    if (loading) {
        return (
            <div className="flex items-center justify-center h-screen">
                <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary"></div>
            </div>
        )
    }

    return (
        <div className="space-y-6 animate-fade-in">
            <div>
                <h1 className="text-3xl font-black text-white mb-2">Analytics</h1>
                <p className="text-gray-400">Métricas detalhadas de engajamento e consumo.</p>
            </div>

            {/* Quick Stats */}
            <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
                <div className="bg-card border border-white/10 rounded-xl p-6">
                    <div className="flex items-center justify-between mb-4">
                        <div className="p-3 bg-blue-500/10 rounded-lg text-blue-500">
                            <Eye className="w-6 h-6" />
                        </div>
                        <span className="flex items-center text-green-400 text-sm font-medium bg-green-500/10 px-2 py-1 rounded">
                            <ArrowUpRight className="w-3 h-3 mr-1" />
                            +12%
                        </span>
                    </div>
                    <h3 className="text-gray-400 text-sm font-medium mb-1">Total de Visualizações</h3>
                    <p className="text-3xl font-bold text-white">{stats.totalViews}</p>
                </div>

                <div className="bg-card border border-white/10 rounded-xl p-6">
                    <div className="flex items-center justify-between mb-4">
                        <div className="p-3 bg-purple-500/10 rounded-lg text-purple-500">
                            <Users className="w-6 h-6" />
                        </div>
                        <span className="flex items-center text-green-400 text-sm font-medium bg-green-500/10 px-2 py-1 rounded">
                            <ArrowUpRight className="w-3 h-3 mr-1" />
                            +5%
                        </span>
                    </div>
                    <h3 className="text-gray-400 text-sm font-medium mb-1">Usuários Ativos (7d)</h3>
                    <p className="text-3xl font-bold text-white">{stats.activeUsers7d}</p>
                </div>

                <div className="bg-card border border-white/10 rounded-xl p-6">
                    <div className="flex items-center justify-between mb-4">
                        <div className="p-3 bg-amber-500/10 rounded-lg text-amber-500">
                            <Clock className="w-6 h-6" />
                        </div>
                    </div>
                    <h3 className="text-gray-400 text-sm font-medium mb-1">Tempo Médio (Min)</h3>
                    <p className="text-3xl font-bold text-white">24m</p>
                </div>
            </div>

            {/* Charts Row */}
            <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
                {/* Views Chart */}
                <div className="bg-card border border-white/10 rounded-xl p-6">
                    <h3 className="text-lg font-bold text-white mb-6">Visualizações nos Últimos 7 Dias</h3>
                    <div className="h-[300px] w-full">
                        <ResponsiveContainer width="100%" height="100%">
                            <BarChart data={stats.dailyViews}>
                                <CartesianGrid strokeDasharray="3 3" stroke="#ffffff1a" vertical={false} />
                                <XAxis
                                    dataKey="date"
                                    stroke="#9ca3af"
                                    tick={{ fontSize: 12 }}
                                    axisLine={false}
                                    tickLine={false}
                                />
                                <YAxis
                                    stroke="#9ca3af"
                                    tick={{ fontSize: 12 }}
                                    axisLine={false}
                                    tickLine={false}
                                />
                                <Tooltip
                                    contentStyle={{ backgroundColor: '#1a1d24', border: '1px solid #ffffff1a', borderRadius: '8px' }}
                                    itemStyle={{ color: '#fff' }}
                                />
                                <Bar dataKey="views" fill="#E50914" radius={[4, 4, 0, 0]} />
                            </BarChart>
                        </ResponsiveContainer>
                    </div>
                </div>

                {/* Top Content */}
                <div className="bg-card border border-white/10 rounded-xl p-6">
                    <h3 className="text-lg font-bold text-white mb-6">Conteúdos Mais Assistidos</h3>
                    <div className="space-y-4">
                        {stats.mostWatched.length === 0 ? (
                            <p className="text-gray-500 text-center py-10">Ainda não há dados de visualização.</p>
                        ) : (
                            stats.mostWatched.map((item, index) => (
                                <div key={index} className="flex items-center justify-between p-3 bg-white/5 rounded-lg">
                                    <div className="flex items-center gap-3">
                                        <div className={`w-8 h-8 rounded-full flex items-center justify-center font-bold text-sm
                                            ${index === 0 ? 'bg-yellow-500/20 text-yellow-500' :
                                                index === 1 ? 'bg-gray-400/20 text-gray-400' :
                                                    index === 2 ? 'bg-amber-700/20 text-amber-700' : 'bg-white/5 text-gray-500'}`}>
                                            #{index + 1}
                                        </div>
                                        <p className="text-white font-medium">{item.title}</p>
                                    </div>
                                    <div className="flex items-center gap-2 text-gray-400 text-sm">
                                        <Eye className="w-4 h-4" />
                                        {item.count}
                                    </div>
                                </div>
                            ))
                        )}
                    </div>
                </div>
            </div>
        </div>
    )
}
