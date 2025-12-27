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

headers = {
    "apikey": supabase_key,
    "Authorization": f"Bearer {supabase_key}",
    "Content-Type": "application/json"
}

print(f"Checking Storage at: {supabase_url}")

# 1. List Buckets
print("\n--- Listing Buckets ---")
try:
    resp = requests.get(f"{supabase_url}/storage/v1/bucket", headers=headers)
    if resp.status_code == 200:
        buckets = resp.json()
        print(f"Found {len(buckets)} buckets.")
        for b in buckets:
            print(f"- Name: {b['name']} | Public: {b['public']}")
            
            # 2. List files in this bucket (first 10)
            print(f"  Files in '{b['name']}':")
            resp_files = requests.post(
                f"{supabase_url}/storage/v1/object/list/{b['name']}", 
                headers=headers, 
                json={"limit": 10, "offset": 0, "sortBy": {"column": "name", "order": "asc"}}
            )
            if resp_files.status_code == 200:
                files = resp_files.json()
                if not files:
                     print("    (Empty)")
                for file in files:
                    print(f"    - {file['name']}")
                    # If it's a folder, we might need to dig deeper, but top level is a start.
            else:
                print(f"    Error listing files: {resp_files.status_code} - {resp_files.text}")

    else:
        print(f"Error listing buckets: {resp.status_code} - {resp.text}")

except Exception as e:
    print(f"Error: {e}")
