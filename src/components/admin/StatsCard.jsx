export default function StatsCard({ icon: Icon, title, value, subtitle, trend }) {
    return (
        <div className="bg-card border border-white/10 rounded-xl p-6 hover:border-primary/50 transition-all">
            <div className="flex items-start justify-between">
                <div className="flex-1">
                    <p className="text-sm font-medium text-gray-400 mb-1">{title}</p>
                    <h3 className="text-3xl font-black text-white mb-2">{value}</h3>
                    {subtitle && (
                        <p className="text-xs text-gray-500">{subtitle}</p>
                    )}
                    {trend && (
                        <p className={`text-xs font-medium mt-2 ${trend.positive ? 'text-green-400' : 'text-red-400'}`}>
                            {trend.positive ? '↑' : '↓'} {trend.value}
                        </p>
                    )}
                </div>
                <div className="w-12 h-12 rounded-lg bg-primary/20 flex items-center justify-center">
                    <Icon className="w-6 h-6 text-primary" />
                </div>
            </div>
        </div>
    )
}
