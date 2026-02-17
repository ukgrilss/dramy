import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'
import { fileURLToPath } from 'url'

const __dirname = path.dirname(fileURLToPath(import.meta.url))
// Try to load .env.local from project root (parent directory of scripts)
const envPath = path.resolve(__dirname, '../.env.local')

console.log(`Loading env from: ${envPath}`)

if (fs.existsSync(envPath)) {
    const content = fs.readFileSync(envPath, 'utf-8')
    content.split(/\r?\n/).forEach(line => {
        const trimmed = line.trim()
        if (trimmed && !trimmed.startsWith('#')) {
            const [key, ...vals] = trimmed.split('=')
            if (key && vals.length > 0) process.env[key.trim()] = vals.join('=').trim()
        }
    })
} else {
    console.warn('.env.local not found. Checking .env...')
    const envPath2 = path.resolve(__dirname, '../.env')
    if (fs.existsSync(envPath2)) {
        const content = fs.readFileSync(envPath2, 'utf-8')
        content.split(/\r?\n/).forEach(line => {
            const trimmed = line.trim()
            if (trimmed && !trimmed.startsWith('#')) {
                const [key, ...vals] = trimmed.split('=')
                if (key && vals.length > 0) process.env[key.trim()] = vals.join('=').trim()
            }
        })
    }
}

const supabaseUrl = process.env.VITE_SUPABASE_URL
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY

if (!supabaseUrl || !supabaseKey) {
    console.error('Missing VITE_SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY')
    process.exit(1)
}

const supabase = createClient(supabaseUrl, supabaseKey)

async function checkPlans() {
    console.log('Checking plans table...')
    const { data, error } = await supabase
        .from('plans')
        .select('*')
        .order('id', { ascending: true })

    if (error) {
        console.error('Error fetching plans:', error)
    } else {
        console.log('Current Plans in DB:')
        console.log(JSON.stringify(data, null, 2))
    }
}

checkPlans()
