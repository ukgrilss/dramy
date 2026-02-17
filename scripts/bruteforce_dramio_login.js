
import { createClient } from '@supabase/supabase-js'

// Dramio.app Project (from migrate_dramio.js)
const SUPABASE_URL = 'https://bushotizgnzejxaqovjy.supabase.co';
const ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ1c2hvdGl6Z256ZWp4YXFvdmp5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjQ4NDcsImV4cCI6MjA2NzE0MDg0N30.5qv0a6EOfkEJR1f9iK6m57O4O2Kb15F_WyyvJMQ76yA';

const supabase = createClient(SUPABASE_URL, ANON_KEY);

const email = 'testUser_nnx655mkbt@gmail.com';
const passwords = [
    'Admin@123',
    'password123',
    '123456',
    '12345678',
    'test1234',
    'teste123',
    'dramio123',
    'dramio2026',
    'admin123',
    'cinefy123',
    'master123'
];

async function tryLogin() {
    console.log(`Starting login attempt for ${email} on ${SUPABASE_URL}`);

    for (const password of passwords) {
        process.stdout.write(`Trying password: ${password} ... `);
        const { data, error } = await supabase.auth.signInWithPassword({
            email: email,
            password: password
        });

        if (error) {
            console.log("❌ Failed");
        } else {
            console.log("✅ SUCCESS!");
            console.log("---------------------------------------------------");
            console.log("PASSWORD FOUND:", password);
            console.log("Session User ID:", data.user.id);
            console.log("---------------------------------------------------");
            return;
        }
    }
    console.log("🚫 All passwords failed.");
}

tryLogin();
