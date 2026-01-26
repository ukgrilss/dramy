
import os
import json
from supabase import create_client, Client

# SOURCE: DRAMIO (External)
SOURCE_URL = "https://bushotizgnzejxaqovjy.supabase.co"
SOURCE_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ1c2hvdGl6Z256ZWp4YXFvdmp5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjQ4NDcsImV4cCI6MjA2NzE0MDg0N30.5qv0a6EOfkEJR1f9iK6m57O4O2Kb15F_WyyvJMQ76yA"

OUTPUT_FILE = "scripts/fix_dubbed_flags.sql"

def main():
    print("🚀 Connecting to Source to recover Dubbed flags...")
    source_client = create_client(SOURCE_URL, SOURCE_KEY)
    
    # helper to handle pagination if needed, but 3000 is small enough for one go usually? 
    # Supabase max yield is usually 1000. Need loop.
    
    total_dubbed = 0
    updates = []
    
    # Add column
    updates.append("-- Adicionar coluna is_dubbed se nao existir")
    updates.append("ALTER TABLE filmes ADD COLUMN IF NOT EXISTS is_dubbed BOOLEAN DEFAULT FALSE;\n")

    page_size = 1000
    for offset in range(0, 5000, page_size):
        print(f"Checking range {offset}...")
        res = source_client.table('dramas').select('title_pt, title_en, is_dubbed').range(offset, offset + page_size).execute()
        
        items = res.data
        if not items:
            break
            
        for item in items:
            if item.get('is_dubbed') is True:
                # Resolve title (same logic as before)
                title = item.get('title_pt') or item.get('title_en') or item.get('title')
                if not title: continue
                
                safe_title = title.replace("'", "''")
                
                # We update by Title. Note that titles must match.
                stmt = f"UPDATE filmes SET is_dubbed = TRUE WHERE titulo = '{safe_title}';"
                updates.append(stmt)
                total_dubbed += 1

    print(f"✅ Found {total_dubbed} dubbed items.")
    
    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        f.write("\n".join(updates))
        f.write(f"\n\nSELECT 'Updated {total_dubbed} movies to is_dubbed=TRUE' as status;")
        
    print(f"Generated {OUTPUT_FILE}")

if __name__ == "__main__":
    main()
