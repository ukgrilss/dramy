import requests
import json
import os

# Load env vars
env_file = "c:\\Users\\pichau\\Desktop\\SS1\\VulnScanner\\cinefy-rewrite\\.env.local"
supabase_url = ""
supabase_key = ""

try:
    with open(env_file, "r") as f:
        for line in f:
            if line.startswith("VITE_SUPABASE_URL="):
                supabase_url = line.strip().split("=")[1]
            elif line.startswith("VITE_SUPABASE_ANON_KEY="):
                supabase_key = line.strip().split("=")[1]
except Exception as e:
    print(f"Error reading .env.local: {e}")
    exit(1)

url = f"{supabase_url}/rest/v1/filmes?select=titulo,capa,video_url&limit=3"
headers = {
    "apikey": supabase_key,
    "Authorization": f"Bearer {supabase_key}",
    "Content-Type": "application/json"
}

print("\n--- Checking Asset Paths (V2) ---")
try:
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        data = response.json()
        for item in data:
            print(f"Title: {item['titulo']}")
            c = item.get('capa')
            v = item.get('video_url')
            print(f"Capa:  {c[:60]}..." if c and len(c) > 60 else f"Capa:  {c}")
            print(f"Video: {v[:60]}..." if v and len(v) > 60 else f"Video: {v}")
            # Identify source
            if v and "supabase" in v: print("Source: Supabase")
            elif v and "r2.dev" in v: print("Source: Cloudflare R2")
            else: print("Source: Other/Relative")
            print("---")
    else:
        print(f"Error: {response.text}")
except Exception as e:
    print(f"Error: {e}")
