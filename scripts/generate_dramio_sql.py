
import requests
import re
import json
import os
import uuid
from datetime import datetime
from supabase import create_client, Client

# ==========================================
# CONFIGURATION
# ==========================================

# SOURCE: DRAMIO (The external site we are scraping)
SOURCE_URL = "https://bushotizgnzejxaqovjy.supabase.co"
SOURCE_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ1c2hvdGl6Z256ZWp4YXFvdmp5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjQ4NDcsImV4cCI6MjA2NzE0MDg0N30.5qv0a6EOfkEJR1f9iK6m57O4O2Kb15F_WyyvJMQ76yA"

OUTPUT_FILE = "dramio_full_content.sql"

source_client = create_client(SOURCE_URL, SOURCE_KEY)

def escape_sql(value):
    if value is None:
        return "NULL"
    if isinstance(value, bool):
        return "TRUE" if value else "FALSE"
    # Determine string
    val_str = str(value)
    # Replace single quotes with double single quotes
    val_str = val_str.replace("'", "''")
    return f"'{val_str}'"

def generate_sql():
    print("🚀 STARTING SQL GENERATION (Dramio -> SQL File)")
    
    # Check Total in Source
    count_res = source_client.table('dramas').select('*', count='exact', head=True).execute()
    total_source = count_res.count
    print(f"📊 Total items in Source: {total_source}")

    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        f.write("-- ==============================================\n")
        f.write(f"-- DRAMIO IMPORT SQL - Generated at {datetime.now()}\n")
        f.write("-- ==============================================\n\n")
        f.write("-- 1. Create columns if not exist (Description is missing usually)\n")
        f.write("ALTER TABLE filmes ADD COLUMN IF NOT EXISTS descricao TEXT;\n\n")

        # 2. Fetch Latest Dramas from Source (Pagination Loop)
        PAGE_SIZE = 1000
        count = 0
        
        for offset in range(0, total_source, PAGE_SIZE):
            print(f"📥 Fetching range {offset} - {offset+PAGE_SIZE}...")
            res_source = source_client.table('dramas').select('*').order('created_at', desc=True).range(offset, offset+PAGE_SIZE).execute()
            
            for item in res_source.data:
                # Try 'title_pt' (Portuguese) then 'title_en' (English) or others
                title = item.get('title_pt') or item.get('title_en') or item.get('title') or item.get('titulo') or ''
                title = title.strip()
                
                if not title: continue
                
                # Extract UUID from iframe url 
                iframe_url = item.get('trailer_url_pt') or item.get('trailer_url_en')
                m3u8_url = None
                if iframe_url:
                     match_id = re.search(r'\/([a-f0-9\-]{36})$', iframe_url)
                     if match_id:
                         video_id = match_id.group(1)
                         m3u8_url = f"https://vz-c2303ad7-0af.b-cdn.net/{video_id}/playlist.m3u8"
                
                if not m3u8_url:
                    # If we really want ALL content even without video, allow it?
                    # User asked for "URL DA IMAGEM DO TITULO CATGORIA QUE O TITULO ESTAVA ETC... E FAZER O SQL"
                    # But without video it's useless for watching.
                    # Let's skip if no video to ensure quality.
                    # print(f"Skipping {title} - No Video")
                    continue

                description = item.get('synopsis_pt') or item.get('synopsis_en') or item.get('description')
                poster = item.get('cover_url') or item.get('cover_img') or item.get('poster_url') 
                category = item.get('genre') or "Drama"
                created_at = item.get('created_at') or datetime.now().isoformat()
                
                # SQL Insert
                # We use ON CONFLICT (titulo) DO NOTHING assuming Title is unique, or just simple insert?
                # User said: "NAO DUPLICASSE OS TITULO QUE JA TEM NA MINHA PLATAFORMA"
                # If 'filmes' doesn't have a unique constraint on 'titulo', ON CONFLICT won't work on 'titulo'.
                # But we can try using WHERE NOT EXISTS logic.
                
                # Generate a random ID for the new row
                new_id = str(uuid.uuid4())
                
                sql = f"""
INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT {escape_sql(new_id)}, {escape_sql(title)}, {escape_sql(poster)}, {escape_sql(description)}, {escape_sql(m3u8_url)}, {escape_sql(category)}, {escape_sql(created_at)}, FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = {escape_sql(title)}
);
"""
                f.write(sql)
                count += 1
                
                if count % 100 == 0:
                    print(f"   -> Generated {count} SQL statements...")

    print(f"\n✅ GENERATION COMPLETE. Created {count} SQL statements in {OUTPUT_FILE}")

if __name__ == "__main__":
    generate_sql()
