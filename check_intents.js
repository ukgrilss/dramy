
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
const supabaseUrl = envConfig.VITE_SUPABASE_URL
const supabaseKey = envConfig.SUPABASE_SERVICE_ROLE_KEY || envConfig.VITE_SUPABASE_ANON_KEY
const supabase = createClient(supabaseUrl, supabaseKey)

async function checkIntents() {
    console.log('--- CHECKING PAYMENT INTENTS ---')
    const { data, error } = await supabase
        .from('payment_intents')
        .select('transaction_id, email, created_at')
        .order('created_at', { ascending: false })
        .limit(5)

    if (error) {
        console.error('Error:', error.message)
    } else {
        if (data.length === 0) {
            console.log('TABLE IS EMPTY.')
        } else {
            data.forEach(i => {
                console.log(`ID: ${i.transaction_id} | Email: ${i.email} | Time: ${i.created_at}`)
            })
        }
    }
}

checkIntents()
