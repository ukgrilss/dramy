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

print(f"Testing RLS on 'filmes' table.")

# Simple SELECT * test (simulating anonymous/public access)
# Since we can't easily simulate a specific user auth token here without login, 
# we'll check if the endpoint returns anything at all or 401/403/Empty.

url = f"{supabase_url}/rest/v1/filmes?select=*"
headers = {
    "apikey": supabase_key,
    "Authorization": f"Bearer {supabase_key}",
    "Content-Type": "application/json",
    # "Prefer": "return=representation"
}

# 1. Anonymous Request
print("\n--- Anonymous Request ---")
try:
    response = requests.get(url, headers=headers)
    print(f"Status Code: {response.status_code}")
    if response.status_code == 200:
        data = response.json()
        print(f"Returned {len(data)} rows.")
        if len(data) > 0:
            print(f"First row: {data[0]['titulo']} - Video URL: {'PRESENT' if data[0].get('video_url') or data[0].get('link') else 'MISSING'}")
    else:
        print(f"Error: {response.text}")
except Exception as e:
    print(f"Error: {e}")

print("\n--- Insight ---")
print("If Anonymous request returns 0 rows, check RLS.")
print("If the user is logged in (frontend), RLS policies apply specifically to that user.")
print("We likely need to update RLS to allow WHERE (subscription_active = true OR trial_active = true)")
