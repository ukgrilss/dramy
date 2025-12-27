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

# Corrected query: removed 'link' and 'trailer' (just to be safe, stick to what we know)
# We know 'video_url' exists from v2 output.
url = f"{supabase_url}/rest/v1/filmes?select=id,titulo,video_url&limit=20"
headers = {
    "apikey": supabase_key,
    "Authorization": f"Bearer {supabase_key}",
    "Content-Type": "application/json"
}

print("\n--- Checking Video URL Formats (v4 - Safe Mode) ---")
try:
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        data = response.json()
        print(f"Found {len(data)} items")
        for item in data:
            print(f"Title: {item['titulo']}")
            v_url = item.get('video_url')
            if v_url is None:
                print("Video URL: [NULL]")
            else:
                # Print first 100 chars
                print(f"Video URL: {v_url[:100]}...")
            print("---")
    else:
        print(f"Error: {response.text}")
except Exception as e:
    print(f"Error: {e}")
