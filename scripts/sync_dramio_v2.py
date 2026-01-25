
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

# DESTINATION: DRAMY (Your local project)
# Loading from .env.local logic or hardcoded for now based on context
try:
    with open('.env.local', 'r') as f:
        env_content = f.read()
        dest_url_match = re.search(r'VITE_SUPABASE_URL=(.+)', env_content)
        dest_key_match = re.search(r'SUPABASE_SERVICE_ROLE_KEY=(.+)', env_content)
        
        DEST_URL = dest_url_match.group(1).strip() if dest_url_match else "https://qlylsucoanjohwrkkroq.supabase.co"
        # Fallback to the key we saw in other scripts if not found, but it should be there.
        # Ideally we use the Service Role Key to allow inserts.
        DEST_KEY = dest_key_match.group(1).strip() if dest_key_match else "YOUR_SERVICE_ROLE_KEY"
except:
    print("Could not read .env.local, using defaults")
    DEST_URL = "https://qlylsucoanjohwrkkroq.supabase.co"
    DEST_KEY = "" # User needs to provide if this fails

# HTTP HEADERS for Scraping
HEADERS_FAKE = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
    "Referer": "https://dramio.app/",
    "Origin": "https://dramio.app"
}

source_client = create_client(SOURCE_URL, SOURCE_KEY)
dest_client = create_client(DEST_URL, DEST_KEY)

def extract_m3u8(iframe_url):
    """
    Extracts the .m3u8 link from the iframe page source.
    """
    if not iframe_url: return None
    
    try:
        print(f"   -> Crawling iframe: {iframe_url}")
        res = requests.get(iframe_url, headers=HEADERS_FAKE, timeout=10)
        content = res.text
        
        # Regex for m3u8 (BunnyCDN style or generic)
        match = re.search(r'https?:(\\\/\\\/|\/\/)[a-zA-Z0-9\-\._~:\/\?#\[\]@!$&\'\(\)\*\+,;=%]+\.m3u8', content)
        
        if match:
            clean_url = match.group(0).replace(r'\/', '/')
            return clean_url
        
        return None
    except Exception as e:
        print(f"   [!] Link extraction failed: {e}")
        return None

def sync_data():
    print("🚀 STARTING CONTENT SYNC (Dramio -> Dramy)")
    
    # 1. Fetch Existing Titles in Dest to prevent duplicates
    print("📊 Fetching local catalog to check duplicates...")
    existing_titles = set()
    
    # Check Movies
    res_movies = dest_client.table('filmes').select('titulo').execute()
    for m in res_movies.data:
        existing_titles.add(m['titulo'].lower().strip())
        
    # Check Series
    res_series = dest_client.table('series').select('title').execute()
    for s in res_series.data:
        existing_titles.add(s['title'].lower().strip())
        
    print(f"   -> Found {len(existing_titles)} existing titles in Local DB.")

    # Check Total in Source
    count_res = source_client.table('dramas').select('*', count='exact', head=True).execute()
    total_source = count_res.count
    print(f"📊 Total items in Source (Dramio): {total_source}")
    
    if total_source <= len(existing_titles):
        print("⚠️ Local DB seems fully synced or larger than Source.")
    else:
        print(f"⚡ Missing approx {total_source - len(existing_titles)} items. Starting deep fetch...")

    new_count = 0
    # 2. Fetch Latest Dramas from Source (Pagination Loop)
    PAGE_SIZE = 1000
    for offset in range(0, total_source, PAGE_SIZE):
        print(f"📥 Fetching range {offset} - {offset+PAGE_SIZE}...")
        res_source = source_client.table('dramas').select('*').order('created_at', desc=True).range(offset, offset+PAGE_SIZE).execute()
        
        data = res_source.data
        if data:
            print(f"   ℹ️ First item keys: {list(data[0].keys())}")
            # print(f"   ℹ️ First item title: {data[0].get('title')}")
        
        for item in data:
            # Try 'title_pt' (Portuguese) then 'title_en' (English) or others
            title = item.get('title_pt') or item.get('title_en') or item.get('title') or item.get('titulo') or ''
            title = title.strip()
            
            if not title: continue
            
            if title.lower() in existing_titles:
                continue # Skip efficiently
                
            print(f"\n🆕 Processing New Item: {title}")
            
            # 3. Extract Video Link (Direct Construction)
            iframe_url = item.get('trailer_url_pt') or item.get('trailer_url_en')
            
            # Extract UUID from iframe url 
            # Format: https://iframe.mediadelivery.net/play/{LIB_ID}/{VIDEO_ID}
            m3u8_url = None
            if iframe_url:
                 match_id = re.search(r'\/([a-f0-9\-]{36})$', iframe_url)
                 if match_id:
                     video_id = match_id.group(1)
                     # Construct direct link using the Zone found (vz-c2303ad7-0af)
                     m3u8_url = f"https://vz-c2303ad7-0af.b-cdn.net/{video_id}/playlist.m3u8"
            
            if not m3u8_url:
                print("   [SKIP] No UUID found in iframe link.")
                continue
                
            print(f"   ✅ Video Link Constructed: {m3u8_url}")
            
            # 4. Insert into Destination (Dramy)
            # Mapping fields: Source -> Dest (filmes table for now)
            
            description = item.get('synopsis_pt') or item.get('synopsis_en') or item.get('description')
            poster = item.get('cover_url') or item.get('cover_img') or item.get('poster_url') 
            # Note: Source keys showed 'cover_img', verify if 'poster_url' exists. 
            # Output showed 'cover_img'.
            
            new_movie = {
                "id": str(uuid.uuid4()),
                "titulo": title,
                "capa": poster,
                # "descricao": description, # Column does not exist in target DB
                "video_url": m3u8_url,
                "categoria": item.get('genre') or "Drama",
                "created_at": item.get('created_at') or datetime.now().isoformat(),
                "premium": False,
                "video_provider": "bunny" # Useful metadata
            }
            
            try:
                insert_res = dest_client.table('filmes').insert(new_movie).execute()
                print("   🎉 IMPORTED SUCCESSFULLY!")
                new_count += 1
                existing_titles.add(title.lower())
                
            except Exception as e:
                print(f"   ❌ Insert Failed: {e}")
                
    print(f"\n🏁 SYNC COMPLETE. Imported {new_count} new items.")

if __name__ == "__main__":
    sync_data()
