
import { createClient } from '@supabase/supabase-js'

import fs from 'fs'
import path from 'path'

// Load .env.local manually
try {
    const envConfig = fs.readFileSync('.env.local', 'utf-8')
    const lines = envConfig.split('\n')
    lines.forEach(line => {
        const parts = line.split('=')
        if (parts.length >= 2) {
            process.env[parts[0].trim()] = parts.slice(1).join('=').trim()
        }
    })
} catch (e) {
    console.error("Could not read .env.local")
}

const supabaseUrl = process.env.VITE_SUPABASE_URL
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY

if (!supabaseUrl || !supabaseKey) {
    console.error("Missing credentials in .env.local")
    process.exit(1)
}

const supabase = createClient(supabaseUrl, supabaseKey)

async function checkCounts() {
    console.log("📊 Checking Local Database Counts...")
    console.log(`📡 URL: ${supabaseUrl}`)

    // Series
    const { count: seriesCount, error: seriesError } = await supabase
        .from('series')
        .select('*', { count: 'exact', head: true })

    if (seriesError) {
        console.error("Error checking series:", seriesError)
    } else {
        console.log(`🎬 Series in Local DB: ${seriesCount}`)
    }

    // Categories
    const { count: catCount } = await supabase
        .from('categories')
        .select('*', { count: 'exact', head: true })
    console.log(`Oc Categories in Local DB: ${catCount}`)

    console.log("\n---")
    console.log("ℹ️  Expected Full Content (from migration file): ~600 items")

    if (seriesCount < 600) {
        console.log("⚠️  MIGRATION INCOMPLETE")
        console.log("To fix this, you must run the 'ICINEPLAY_CONTENT.sql' file in your Supabase SQL Editor.")
    } else {
        console.log("✅ Data looks complete!")
    }
}

checkCounts()
