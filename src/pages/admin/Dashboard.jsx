import { useState, useEffect } from 'react'
import {
    Users, CreditCard, TrendingUp, AlertCircle,
    ArrowUpRight, ArrowDownRight, Activity,
    DollarSign, UserPlus, RefreshCcw, UserX, Download
} from 'lucide-react'
import { supabase } from '../../lib/supabase'

const Dashboard = () => {
    const [stats, setStats] = useState({
        totalUsers: 0,
        activeSubs: 0,
        totalContent: 0,
        mrr: 0,
        newSubs: 0,
        renewals: 0,
        churnRate: 0,
        planPerformance: []
    })
    const [loading, setLoading] = useState(true)
    const [timeRange, setTimeRange] = useState('7d')

    useEffect(() => {
        fetchStats()
    }, [timeRange])

    const fetchStats = async () => {
        try {
            const now = new Date()
            let startDate = new Date()

            // Calculate start date based on timeRange
            switch (timeRange) {
                case '24h': startDate.setDate(now.getDate() - 1); break;
                case '7d': startDate.setDate(now.getDate() - 7); break;
                case '30d': startDate.setDate(now.getDate() - 30); break;
                case '90d': startDate.setDate(now.getDate() - 90); break;
                case '12m': startDate.setFullYear(now.getFullYear() - 1); break;
                default: startDate.setDate(now.getDate() - 7);
            }

            const startDateStr = startDate.toISOString()

            // Fetch users count
            const { count: usersCount } = await supabase
                .from('profiles')
                .select('*', { count: 'exact', head: true })

            // Fetch active subscriptions count
            const { count: subsCount } = await supabase
                .from('subscriptions')
                .select('*', { count: 'exact', head: true })
                .eq('status', 'active')

            // Fetch NEW subscriptions in range
            const { count: newSubsCount } = await supabase
                .from('subscriptions')
                .select('*', { count: 'exact', head: true })
                .gte('created_at', startDateStr)

            // Fetch content count
            const { count: moviesCount } = await supabase
                .from('series')
                .select('*', { count: 'exact', head: true })

            // Fetch Subscriptions grouped by plan (Active items only) to calculate MRR
            const { data: activeSubscriptions } = await supabase
                .from('subscriptions')
                .select('plan')
                .eq('status', 'active')

            // Calculate aggregations
            const planCounts = {
                'monthly': 0,
                'annual': 0,
                'lifetime': 0,
                'quarterly': 0
            }

            activeSubscriptions?.forEach(sub => {
                if (planCounts[sub.plan] !== undefined) {
                    planCounts[sub.plan]++
                }
            })

            const PRICES = {
                'monthly': 9.99,    // VIP Mensal - R$ 9,99 (Corrected back to match screenshot)
                'annual': 59.90,    // Família Anual - R$ 59,90
                'quarterly': 27.90, // Trimestral - R$ 27,90
                'lifetime': 97.90   // Vitalício - R$ 97,90
            }

            const totalMrr =
                (planCounts.monthly * PRICES.monthly) +
                (planCounts.annual * (PRICES.annual / 12)) +
                (planCounts.quarterly * (PRICES.quarterly / 3))

            setStats({
                totalUsers: usersCount || 0,
                activeSubs: subsCount || 0,
                totalContent: moviesCount || 0,
                mrr: totalMrr,
                newSubs: newSubsCount || 0,
                renewals: 0,
                churnRate: 0,
                planPerformance: [
                    { name: 'Plano VIP (Mensal)', count: planCounts.monthly, revenue: planCounts.monthly * PRICES.monthly },
                    { name: 'Plano Família (Anual)', count: planCounts.annual, revenue: planCounts.annual * PRICES.annual },
                    { name: 'Plano Básico (Trimestral)', count: planCounts.quarterly, revenue: planCounts.quarterly * PRICES.quarterly },
                ]
            })
        } catch (error) {
            console.error('Error fetching stats:', error)
        } finally {
            setLoading(false)
        }
    }

    const StatCard = ({ title, value, subValue, icon: Icon, color, trend }) => (
        <div className="bg-[#1a1d24]/50 backdrop-blur-sm border border-white/5 p-5 rounded-2xl hover:border-white/10 transition-all group">
            <div className="flex justify-between items-start mb-4">
                <div className={`p-3 rounded-xl ${color} bg-opacity-10 group-hover:bg-opacity-20 transition-all`}>
                    <Icon className={`w-6 h-6 ${color.replace('bg-', 'text-')}`} />
                </div>
                {trend && (
                    <span className={`flex items-center text-xs font-medium px-2 py-1 rounded-full ${trend > 0 ? 'bg-green-500/10 text-green-400' : 'bg-red-500/10 text-red-400'}`}>
                        {trend > 0 ? <ArrowUpRight className="w-3 h-3 mr-1" /> : <ArrowDownRight className="w-3 h-3 mr-1" />}
                        {Math.abs(trend)}%
                    </span>
                )}
            </div>
            <h3 className="text-gray-400 text-sm font-medium mb-1">{title}</h3>
            <div className="flex items-baseline gap-2">
                <span className="text-2xl font-bold text-white">{value}</span>
                {subValue && <span className="text-xs text-gray-500">{subValue}</span>}
            </div>
        </div>
    )

    if (loading) {
        return (
            <div className="flex items-center justify-center h-64">
                <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary"></div>
            </div>
        )
    }

    return (
        <div className="space-y-8 animate-fade-in text-sans">
            {/* Time Filter Tabs */}
            <div className="flex items-center gap-2 bg-[#1a1d24] p-1 rounded-lg w-fit border border-white/5">
                {['24h', '7d', '30d', '90d', '12m'].map((range) => (
                    <button
                        key={range}
                        onClick={() => setTimeRange(range)}
                        className={`
                            px-4 py-1.5 rounded-md text-sm font-medium transition-all
                            ${timeRange === range
                                ? 'bg-[#2a2d35] text-white shadow-sm'
                                : 'text-gray-400 hover:text-white hover:bg-white/5'}
                        `}
                    >
                        {range === '12m' ? '1 Ano' : range === '24h' ? '24h' : range.toUpperCase()}
                    </button>
                ))}
            </div>

            {/* 5-Column Stats Grid */}
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-5 gap-4">
                <StatCard
                    title="MRR Total"
                    value={`R$ ${stats.mrr.toLocaleString('pt-BR', { minimumFractionDigits: 2 })}`}
                    icon={DollarSign}
                    color="bg-green-500"
                    trend={12.5}
                />
                <StatCard
                    title="Assinaturas Ativas"
                    value={stats.activeSubs}
                    subValue="usuários"
                    icon={Users}
                    color="bg-blue-500"
                    trend={4.2}
                />
                <StatCard
                    title="Novas Assinaturas"
                    value={`+${stats.newSubs}`}
                    icon={UserPlus}
                    color="bg-pink-500"
                    trend={8.1}
                />
                <StatCard
                    title="Renovações"
                    value={stats.renewals}
                    icon={RefreshCcw}
                    color="bg-purple-500"
                    trend={-2.4}
                />
                <StatCard
                    title="Churn Rate"
                    value={`${stats.churnRate}%`}
                    icon={UserX}
                    color="bg-orange-500"
                    trend={0.5}
                />
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
                {/* Main Chart Area (represented by Recent Sales for now) */}
                <div className="lg:col-span-2 bg-[#1a1d24]/50 border border-white/5 rounded-2xl p-6">
                    <div className="flex justify-between items-center mb-6">
                        <div>
                            <h3 className="text-lg font-bold text-white">Desempenho por Plano</h3>
                            <p className="text-sm text-gray-500">Comparativo de adesão entre planos (Dados Reais)</p>
                        </div>
                    </div>

                    <div className="space-y-4">
                        {stats.planPerformance?.map((plan, i) => (
                            <div key={plan.name} className="flex items-center justify-between p-4 bg-white/5 rounded-xl border border-white/5 hover:border-white/10 transition-all">
                                <div className="flex items-center gap-4">
                                    <div className={`p-2 rounded-lg ${i === 0 ? 'bg-amber-500/20 text-amber-500' : 'bg-gray-700/50 text-gray-400'}`}>
                                        <CreditCard className="w-5 h-5" />
                                    </div>
                                    <div>
                                        <h4 className="font-medium text-white">{plan.name}</h4>
                                        <p className="text-xs text-gray-400">{plan.count} assinantes ativos</p>
                                    </div>
                                </div>
                                <div className="text-right">
                                    <p className="font-bold text-white">
                                        {plan.revenue.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' })}
                                    </p>
                                    <p className="text-xs text-gray-500 flex items-center justify-end gap-1">
                                        Server DB
                                    </p>
                                </div>
                            </div>
                        ))}
                    </div>
                </div>

                {/* Right Column - Action Widgets */}
                <div className="space-y-6">
                    {/* Users without Subscription */}
                    <div className="bg-[#1a1d24]/50 border border-white/5 rounded-2xl p-6">
                        <div className="flex items-start justify-between mb-4">
                            <div>
                                <h3 className="font-bold text-white">Usuários s/ Assinatura</h3>
                                <p className="text-xs text-gray-500 mt-1">Leads potenciais para recuperação</p>
                            </div>
                            <div className="p-2 bg-red-500/10 text-red-400 rounded-lg">
                                <AlertCircle className="w-5 h-5" />
                            </div>
                        </div>
                        <div className="mb-6">
                            <span className="text-3xl font-bold text-white">{Math.max(0, stats.totalUsers - stats.activeSubs)}</span>
                            <span className="text-sm text-gray-500 ml-2">usuários</span>
                        </div>
                        <button className="w-full py-2.5 bg-white/5 hover:bg-white/10 border border-white/10 rounded-xl text-sm font-medium text-gray-300 transition-all flex items-center justify-center gap-2 group">
                            <Download className="w-4 h-4 group-hover:text-primary transition-colors" />
                            Baixar Lista CSV
                        </button>
                    </div>

                    {/* Expired Subscriptions */}
                    <div className="bg-[#1a1d24]/50 border border-white/5 rounded-2xl p-6">
                        <div className="flex items-start justify-between mb-4">
                            <div>
                                <h3 className="font-bold text-white">Assinaturas Expiradas</h3>
                                <p className="text-xs text-gray-500 mt-1">Últimos 30 dias</p>
                            </div>
                            <div className="p-2 bg-orange-500/10 text-orange-400 rounded-lg">
                                <UserX className="w-5 h-5" />
                            </div>
                        </div>
                        <div className="mb-6">
                            <span className="text-3xl font-bold text-white">12</span>
                            <span className="text-sm text-gray-500 ml-2">expirados</span>
                        </div>
                        <button className="w-full py-2.5 bg-primary/10 hover:bg-primary/20 border border-primary/20 rounded-xl text-sm font-medium text-primary transition-all">
                            Ver Todas
                        </button>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default Dashboard
