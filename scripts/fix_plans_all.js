import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'
import { fileURLToPath } from 'url'

const __dirname = path.dirname(fileURLToPath(import.meta.url))
// Try to load .env.local from project root
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
    // Fallback to .env
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

async function updatePlan(slug, newPrice) {
    console.log(`Updating ${slug} to ${newPrice}...`)
    const { data, error } = await supabase
        .from('plans')
        .update({ price: newPrice })
        .eq('slug', slug)
        .select()

    if (error) {
        console.error(`Error updating ${slug}:`, error)
    } else {
        console.log(`✅ Updated ${slug}:`, data)
    }
}

async function run() {
    await updatePlan('monthly', 9.99)
    await updatePlan('quarterly', 27.90)
    await updatePlan('annual', 59.90)
}

run()
