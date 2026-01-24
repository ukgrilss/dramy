
import { createClient } from '@supabase/supabase-js'

const SUPABASE_URL = 'https://qlylsucoanjohwrkkroq.supabase.co'
const SERVICE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFseWxzdWNvYW5qb2h3cmtrcm9xIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2NjAxMDUyOSwiZXhwIjoyMDgxNTg2NTI5fQ.QeKt7tjVSHbh6jR9Z59n2sTbkHYk3EMPRpdiOrIMATo'

const supabase = createClient(SUPABASE_URL, SERVICE_KEY)

async function simulateDashboard() {
    console.log('--- Simulating Dashboard Calculations ---')

    // 1. Time Range: Last 7 Days (Default)
    const now = new Date()
    const startDate = new Date()
    startDate.setDate(now.getDate() - 7)
    const startDateStr = startDate.toISOString()

    console.log(`Time Range: Last 7 Days (since ${startDateStr})`)

    // 2. Fetch Active Subs
    const { data: activeSubscriptions, error } = await supabase
        .from('subscriptions')
        .select('plan, created_at')
        .eq('status', 'active')

    if (error) {
        console.error('Error fetching subs:', error)
        return
    }

    console.log(`Total Active Subscriptions: ${activeSubscriptions.length}`)

    // 3. Calculate New Subs in Range
    const newSubs = activeSubscriptions.filter(s => s.created_at >= startDateStr)
    console.log(`New Subscriptions (in range): ${newSubs.length}`)

    // Debug: show dates of subs
    if (activeSubscriptions.length > 0) {
        console.log('Subscription Dates:')
        activeSubscriptions.forEach(s => console.log(` - ${s.plan}: ${s.created_at} ${s.created_at >= startDateStr ? '(NEW)' : ''}`))
    }

    // 4. Calculate MRR
    const planCounts = {
        'monthly': 0,
        'annual': 0,
        'lifetime': 0,
        'quarterly': 0
    }

    activeSubscriptions.forEach(sub => {
        if (planCounts[sub.plan] !== undefined) {
            planCounts[sub.plan]++
        }
    })

    const PRICES = {
        'monthly': 9.99,
        'annual': 59.90,
        'quarterly': 27.90,
        'lifetime': 97.90
    }

    const totalMrr =
        (planCounts.monthly * PRICES.monthly) +
        (planCounts.annual * (PRICES.annual / 12)) +
        (planCounts.quarterly * (PRICES.quarterly / 3))

    console.log('\n--- Dashboard Stats ---')
    console.log(`MRR: R$ ${totalMrr.toFixed(2).replace('.', ',')}`)
    console.log(`Assinaturas Ativas: ${activeSubscriptions.length}`)
    console.log(`Novas Assinaturas: ${newSubs.length}`)
}

simulateDashboard()
