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

url = f"{supabase_url}/rest/v1/filmes?select=id,titulo,link,video_url&limit=5"
headers = {
    "apikey": supabase_key,
    "Authorization": f"Bearer {supabase_key}",
    "Content-Type": "application/json"
}

print("\n--- Checking Video URL Formats ---")
try:
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        data = response.json()
        for item in data:
            print(f"Title: {item['titulo']}")
            print(f"Link: {item.get('link')}")
            print(f"Video URL: {item.get('video_url')}")
            print("---")
    else:
        print(f"Error: {response.text}")
except Exception as e:
    print(f"Error: {e}")
