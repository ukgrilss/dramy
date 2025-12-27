
import { createClient } from '@supabase/supabase-js'
import fs from 'fs'

function parseEnv(filePath) {
    const content = fs.readFileSync(filePath, 'utf8')
    const config = {}
    content.split('\n').forEach(line => {
        const match = line.match(/^([^=]+)=(.*)$/)
        if (match) {
            config[match[1].trim()] = match[2].trim().replace(/^['"]|['"]$/g, '')
        }
    })
    return config
}

const envConfig = parseEnv('.env.local')
const supabase = createClient(envConfig.VITE_SUPABASE_URL, envConfig.SUPABASE_SERVICE_ROLE_KEY || envConfig.VITE_SUPABASE_ANON_KEY)

async function checkStatus() {
    console.log('--- CHECKING USER STATUS ---')
    // We'll list the last profile updated
    const { data: profiles, error } = await supabase
        .from('profiles')
        .select('email, subscription_active, plan_atual, created_at')
        .order('created_at', { ascending: false })
        .limit(1)

    if (error) {
        console.error('Error:', error.message)
    } else {
        if (profiles.length === 0) {
            console.log('No profiles found.')
        } else {
            console.log(`USER: ${profiles[0].email}`)
            console.log(`STATUS: ${profiles[0].subscription_active ? 'ACTIVE (PREMIUM)' : 'NOT ACTIVE'}`)
            console.log(`PLAN: ${profiles[0].plan_atual}`)
            console.log(`LAST UPDATE: ${profiles[0].updated_at}`)
        }
    }
}

checkStatus()
