
import { createClient } from '@supabase/supabase-js'
import path from 'path'
import { fileURLToPath } from 'url'

// Environment setup
const SUPABASE_URL = 'https://qlylsucoanjohwrkkroq.supabase.co'
const SERVICE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFseWxzdWNvYW5qb2h3cmtrcm9xIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2NjAxMDUyOSwiZXhwIjoyMDgxNTg2NTI5fQ.QeKt7tjVSHbh6jR9Z59n2sTbkHYk3EMPRpdiOrIMATo'

const supabase = createClient(SUPABASE_URL, SERVICE_KEY)

const SAFE_EMAILS = [
    'barbara.fernandaribeiro@gmail.com',
    'admin@cinefy.com'
]

async function cleanup() {
    console.log('--- STARTING CLEANUP ---')

    // 1. Fetch Lists directly from Profiles (since Auth API is failing)
    console.log('Fetching users via Profiles table...')
    const { data: profiles, error } = await supabase.from('profiles').select('id, email')

    if (error) {
        console.error('Error fetching profiles:', error)
        return
    }

    // Mock the structure needed
    const users = profiles.map(p => ({ id: p.id, email: p.email }))
    console.log(`Total profiles found: ${users.length}`)

    // 2. Identify Safe Users
    const safeIds = []
    SAFE_EMAILS.forEach(email => {
        const user = users.find(u => u.email === email)
        if (user) {
            console.log(`✅ Safe User identified: ${email} (ID: ${user.id})`)
            safeIds.push(user.id)
        } else {
            console.log(`⚠️ Safe User NOT found in profiles: ${email}`)
        }
    })

    // 3. Filter Users to Delete
    const usersToDelete = users.filter(u => !safeIds.includes(u.id))
    const badIds = usersToDelete.map(u => u.id)
    console.log(`Users to delete: ${usersToDelete.length}`)

    if (usersToDelete.length === 0) {
        console.log('No users to delete.')
        return
    }

    // 4. Clean Public Tables First
    console.log('Cleaning public tables...')

    // Comprehensive list of tables that might have user_id
    // Order matters: dependent tables first, then profiles, then auth.users
    const tables = [
        'trial_access',  // Often references profiles or users
        'subscriptions', // References auth.users
        'transactions',
        'payments',
        'invoices',
        'orders',
        'watch_history',
        'history',
        'my_list',
        'watchlist',
        'favorites',
        'notifications',
        'profiles',      // References auth.users, usually blocking if NO ACTION
        'users'          // Public users table if exists
    ]

    for (const table of tables) {
        process.stdout.write(`Cleaning ${table}... `)
        // For profiles, the column is 'id', for others it's 'user_id'
        const column = table === 'profiles' ? 'id' : 'user_id'

        try {
            const { error } = await supabase
                .from(table)
                .delete()
                .in(column, badIds)

            if (error) {
                // Ignore 'relation does not exist' errors
                if (error.code === '42P01' || error.message.includes('does not exist')) {
                    console.log('Skipped (table not found)')
                } else {
                    console.log(`Error: ${error.message} (${error.code})`)
                }
            } else {
                console.log('Done')
            }
        } catch (e) {
            console.log(`Exception: ${e.message}`)
        }
    }

    // 5. Execute User Deletion
    console.log('Deleting auth users...')
    let deletedCount = 0
    let failCount = 0

    for (const user of usersToDelete) {
        const { error: delError } = await supabase.auth.admin.deleteUser(user.id)

        if (delError) {
            console.log(`FAILED ${user.email}: ${delError.message}`)
            failCount++
        } else {
            process.stdout.write('.') // Progress bar
            deletedCount++
        }
    }
    console.log('\n')

    console.log('--- CLEANUP COMPLETE ---')
    console.log(`Deleted: ${deletedCount}`)
    console.log(`Failed: ${failCount}`)
    console.log(`Remaining Users: ${users.length - deletedCount}`)
}

cleanup()
