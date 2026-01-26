
import os
from supabase import create_client
from dotenv import load_dotenv

# Load env variables
load_dotenv('.env.local')

url = os.environ.get("VITE_SUPABASE_URL")
key = os.environ.get("VITE_SUPABASE_ANON_KEY")

if not url or not key:
    print("Error: Missing credentials")
    exit(1)

supabase = create_client(url, key)

print(f"Connecting to {url}...")

# Check 'filmes' structure
print("\n--- FILMES TABLE ---")
try:
    res = supabase.table('filmes').select('*').limit(1).execute()
    if res.data:
        print("Columns:", list(res.data[0].keys()))
        print("Sample:", res.data[0])
    else:
        print("Table empty or no access.")
except Exception as e:
    print(e)
