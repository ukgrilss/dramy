
import os
import re
from supabase import create_client

# SOURCE: DRAMIO (External) - Where files live
SOURCE_URL = "https://bushotizgnzejxaqovjy.supabase.co"
SOURCE_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJvbGUiOiJzZXJ2aWNlX3JvbGUiLCJpc3MiOiJzdXBhYmFzZSIsImlhdCI6MTc1MTU2NDg0NywiZXhwIjoyMDY3MTQwODQ3fQ.SERVICE_KEY_PLACEHOLDER_IF_NEEDED"
# Actually I only have ANON KEY in previous files, let's use that. 
# Re-reading .env.local or previous step for ANON KEY of SOURCE.
# Wait, I used SOURCE_KEY in generate_dubbed_fix.py. Let's reuse that.

SOURCE_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ1c2hvdGl6Z256ZWp4YXFvdmp5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjQ4NDcsImV4cCI6MjA2NzE0MDg0N30.5qv0a6EOfkEJR1f9iK6m57O4O2Kb15F_WyyvJMQ76yA"

# List of broken UUIDs/Files from the report (Supabase 400s)
BROKEN_ITEMS = [
    {"id": "c18a8040-e1de-49ad-bfc9-d52d80485f1f", "uuid": "25552609-2049-43c3-9c6f-ea468e96acdc", "title": "Sou Nada Mais Que Um Mortal"},
    {"id": "966d2265-bb0c-4e01-8f6d-4983f337d31d", "uuid": "ce903ac1-cad4-4402-9014-d83abf63f7e6", "title": "QUANDO MEU EX SE TORNA MEU GINECOLOGISTA"},
    {"id": "12ac6096-0e7a-4f4e-ac63-650f25209be9", "uuid": "6cc50a18-d297-4290-85ac-6bcb5af19ef8", "title": "O AMOR É UMA DANÇA PERIGOSA"},
    {"id": "97367b67-b592-4620-add2-b9955d993369", "uuid": "2277bbb5-83da-4a2e-b003-4ea75f3d3e47", "title": "Superando Meu Guarda Costas"},
    {"id": "7be859aa-0d54-4e96-ab46-5031f5c2dfb4", "uuid": "4a46e7aa-d64b-415b-b5b2-a363306af173", "title": "Superando Meu guarda Costa"}
]

def main():
    print("🚀 Hunting for missing covers in Source Storage...")
    client = create_client(SOURCE_URL, SOURCE_KEY)
    
    # We suspect they are in 'images' bucket, under 'dramas/covers/'
    # But list() on storage is tricky with RLS. Let's try to 'list' top level or known folders.
    
    # Strategy: Just try variations for each broken item
    variations = ["_pt.jpg", "_pt.jpeg", "_pt.png", "_pt.webp", ".jpg", ".jpeg", ".png", ".webp", "_en.jpg"]
    
    found_updates = []
    
    for item in BROKEN_ITEMS:
        print(f"\nScanning for: {item['title']} (UUID: {item['uuid']})")
        
        found_url = None
        
        # 1. Try public access check for variations
        for suffix in variations:
            path = f"images/dramas/covers/{item['uuid']}{suffix}"
            public_url = client.storage.from_('images').get_public_url(path)
            
            # Verify if it exists
            # We use requests here to check
            import requests
            try:
                r = requests.head(public_url)
                if r.status_code == 200:
                    found_url = public_url
                    print(f"✅ FOUND: {suffix}")
                    break
            except:
                pass
        
        if found_url:
            sql = f"UPDATE filmes SET capa = '{found_url}' WHERE id = '{item['id']}';"
            found_updates.append(sql)
        else:
            print("❌ NOT FOUND with standard variations.")

    # Save SQL
    if found_updates:
        with open("scripts/fix_broken_400s.sql", "w", encoding="utf-8") as f:
            f.write("\n".join(found_updates))
        print(f"\nCreated scripts/fix_broken_400s.sql with {len(found_updates)} fixes.")
    else:
        print("\nNo fixes found via variation scanning.")

if __name__ == "__main__":
    main()
