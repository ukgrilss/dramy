import requests
import json
import os

# Load env vars from .env.local
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

if not supabase_url or not supabase_key:
    print("Could not find Supabase URL or Key in .env.local")
    exit(1)

print(f"Testing URL: {supabase_url}")
# print(f"Key found: {supabase_key[:10]}...")

# URL for RPC
rpc_url = f"{supabase_url}/rest/v1/rpc/register_trial_access"

headers = {
    "apikey": supabase_key,
    "Authorization": f"Bearer {supabase_key}",
    "Content-Type": "application/json"
}

# Payload (mock data)
payload = {
    "p_ip_address": "127.0.0.1",
    "p_fingerprint": "test_script_check",
    "p_user_agent": "Python Script",
    "p_user_id": "00000000-0000-0000-0000-000000000000" # Dummy UUID
}

print("\n--- Sending Request ---")
try:
    response = requests.post(rpc_url, headers=headers, json=payload)
    
    print(f"Status Code: {response.status_code}")
    print(f"Response: {response.text}")
    
    if response.status_code == 200:
        print("\n✅ RPC 'register_trial_access' EXISTS and is callable!")
        print("Note: If it returned an error inside the JSON (like 'User not found' or foreign key violation), that is expected and means the function IS running.")
    elif response.status_code == 404:
        print("\n❌ RPC 'register_trial_access' NOT FOUND (404).")
        print("The user likely failed to run the SQL script to create the function.")
    elif response.status_code == 401 or response.status_code == 403:
        print("\n❌ Permission Denied (401/403). check RLS or Grants.")
    else:
        print(f"\n❌ Unexpected error: {response.status_code}")

except Exception as e:
    print(f"Error making request: {e}")
