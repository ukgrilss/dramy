

import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'

// Load env locally without dotenv package
const envPath = path.resolve(process.cwd(), '.env.local')
const envContent = fs.readFileSync(envPath, 'utf-8')
const envConfig = {}
envContent.split('\n').forEach(line => {
    const [key, ...values] = line.split('=')
    if (key && values) {
        envConfig[key.trim()] = values.join('=').trim()
    }
})

const supabaseUrl = envConfig.VITE_SUPABASE_URL
const supabaseKey = envConfig.VITE_SUPABASE_ANON_KEY

if (!supabaseUrl || !supabaseKey) {
    console.error('Missing Supabase credentials')
    process.exit(1)
}

const supabase = createClient(supabaseUrl, supabaseKey)

async function checkDates() {
    console.log('Checking recent profiles...')

    const { data, error } = await supabase
        .from('profiles')
        .select('id, email, full_name, created_at')
        .order('created_at', { ascending: false })
        .limit(10)

    if (error) {
        console.error('Error:', error)
        return
    }

    console.table(data)
}

checkDates()
