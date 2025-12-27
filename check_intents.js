
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
// Use ANON key. If RLS allows "authenticated" insert, we might not be able to read with anon unless we add a policy.
// In the SQL I wrote:
// CREATE POLICY "Service Role can read intents" ... TO service_role
// I did NOT add a read policy for public/anon.
// So I strictly need SERVICE KEY to read this table from a script if I am not the user.
// But I don't have SERVICE KEY in .env.local (usually).
// Let's check if user added it (they might have, since I told them to add to Vercel).
// If not, I can try to use the key if it's in the file.

const supabaseUrl = envConfig.VITE_SUPABASE_URL
const supabaseKey = envConfig.SUPABASE_SERVICE_ROLE_KEY || envConfig.VITE_SUPABASE_ANON_KEY

// If we only have anon key, we might fail to read if RLS is strict.
// But let's try.
const supabase = createClient(supabaseUrl, supabaseKey)

async function checkIntents() {
    console.log('--- CHECKING PAYMENT INTENTS ---')
    const { data, error } = await supabase
        .from('payment_intents')
        .select('*')
        .order('created_at', { ascending: false })
        .limit(5)

    if (error) {
        console.error('Error:', error.message)
        console.log('HINT: Did you run CREATE_PAYMENT_INTENTS.sql?')
        console.log('HINT: Does the scripts have access (RLS)?')
    } else {
        if (data.length === 0) {
            console.log('TABLE IS EMPTY. Frontend is not saving intents.')
        } else {
            console.log(`FOUND ${data.length} INTENTS:`)
            console.table(data)
        }
    }
}

checkIntents()
