
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

async function checkSpecificUser() {
    const email = 'jujubbhsh@gmail.com'
    console.log(`--- CHECKING STATUS: ${email} ---`)
    const { data, error } = await supabase
        .from('profiles')
        .select('*')
        .eq('email', email)
        .single()

    if (error) {
        console.error('Error:', error.message)
    } else {
        console.log(`SUBSCRIPTION: ${data.subscription_active}`)
        console.log(`PLAN: ${data.plan_atual}`)
    }
}

checkSpecificUser()
