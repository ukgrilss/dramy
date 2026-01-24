
import fs from 'fs';
import https from 'https';

// --- CONFIGURATION ---
const SUPABASE_URL = 'https://bushotizgnzejxaqovjy.supabase.co';
const API_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ1c2hvdGl6Z256ZWp4YXFvdmp5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjQ4NDcsImV4cCI6MjA2NzE0MDg0N30.5qv0a6EOfkEJR1f9iK6m57O4O2Kb15F_WyyvJMQ76yA';
const ACCESS_TOKEN = 'eyJhbGciOiJIUzI1NiIsImtpZCI6IlZtZ3h4TVdQbyttSHY0eHciLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2J1c2hvdGl6Z256ZWp4YXFvdmp5LnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiJiOTBiYzEwMi00OGY5LTQ5M2MtOTZhZS1jYTIxNzkwYzAzOWEiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzY3NjY0MTMyLCJpYXQiOjE3Njc2NjA1MzIsImVtYWlsIjoidGVzdHVzZXJfbm54NjU1bWtidEBnbWFpbC5jb20iLCJwaG9uZSI6IiIsImFwcF9tZXRhZGF0YSI6eyJwcm92aWRlciI6ImVtYWlsIiwicHJvdmlkZXJzIjpbImVtYWlsIl19LCJ1c2VyX21ldGFkYXRhIjp7ImVtYWlsIjoidGVzdHVzZXJfbm54NjU1bWtidEBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiZnVsbF9uYW1lIjoiVGVzdCBVc2VyIiwicGhvbmVfdmVyaWZpZWQiOmZhbHNlLCJzdWIiOiJiOTBiYzEwMi00OGY5LTQ5M2MtOTZhZS1jYTIxNzkwYzAzOWEiLCJ1c2VybmFtZSI6InVzZXJ4bGpndiJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzY3MTA0OTU0fV0sInNlc3Npb25faWQiOiJlNTFkOTQwZi0yOTk1LTQyNGMtYjhmNy04Y2RkYzQwMmU2MmQiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.CRjTXI3NkqUlYiYhZwuDnn01YPLYntrkQnEn2r09mOE';

const OUTPUT_FILE = 'IMPORT_FULL_CONTENT.sql';

// --- HELPERS ---

async function fetchSupabase(table, query = '') {
    const url = `${SUPABASE_URL}/rest/v1/${table}?${query}`;
    console.log(`Fetching ${url}...`);

    return new Promise((resolve, reject) => {
        const req = https.request(url, {
            headers: {
                'apikey': API_KEY,
                'Authorization': `Bearer ${ACCESS_TOKEN}`,
                'Content-Type': 'application/json'
            }
        }, (res) => {
            let data = '';
            res.on('data', (chunk) => data += chunk);
            res.on('end', () => {
                try {
                    const json = JSON.parse(data);
                    if (res.statusCode >= 400) reject(json);
                    else resolve(json);
                } catch (e) {
                    reject(e);
                }
            });
        });
        req.on('error', reject);
        req.end();
    });
}

// --- MAIN ---

async function main() {
    console.log("🚀 Starting Mass Migration (Full Fetch)...");

    try {
        let allDramas = [];
        let offset = 0;
        const limit = 500;

        // Fetch Loop
        while (true) {
            const fetched = await fetchSupabase('dramas', `select=*&limit=${limit}&offset=${offset}`);
            if (!fetched || fetched.length === 0) break;

            allDramas = allDramas.concat(fetched);
            console.log(`Received ${fetched.length} items. Total: ${allDramas.length}`);

            if (fetched.length < limit) break; // Reached end
            offset += limit;
        }

        console.log(`✅ Total dramas fetched: ${allDramas.length}`);

        let sql = `-- MASS IMPORT DRAMAS (${new Date().toISOString()})\n`;
        sql += `-- NOTE: Video links are Iframe embeds because direct M3U8 links are protected by BunnyCDN 403 Forbidden.\n`;
        sql += `INSERT INTO categories (name, slug, icon) VALUES ('Novos', 'novos', '🆕') ON CONFLICT DO NOTHING;\n`;
        sql += `INSERT INTO filmes (title, description, image_url, video_url, category_id, premium, featured) VALUES\n`;

        const values = [];

        for (const drama of allDramas) {
            const title = (drama.title_pt || drama.title_en || 'Untitled').replace(/'/g, "''");
            const description = (drama.synopsis_pt || '').replace(/'/g, "''").replace(/\n/g, ' ');
            const cover = drama.cover_image_url_pt || '';
            const iframe = drama.trailer_url_pt || '';

            // Clean logic: Just use iframe.
            // If user wants M3U8, they can extract 'video_id' from this URL later.
            let videoUrl = iframe;

            values.push(`(
    '${title}',
    '${description}',
    '${cover}',
    '${videoUrl}',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    ${Boolean(drama.views > 1000)}
)`);
        }

        sql += values.join(',\n') + '\nON CONFLICT (title) DO NOTHING;';

        fs.writeFileSync(OUTPUT_FILE, sql);
        console.log(`🎉 Done! Saved ${allDramas.length} items to ${OUTPUT_FILE}`);

    } catch (err) {
        console.error("❌ Fatal Error:", err);
    }
}

main();
