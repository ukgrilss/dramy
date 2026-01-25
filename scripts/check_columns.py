
import os
import re
from supabase import create_client

# Load Env
try:
    with open('.env.local', 'r') as f:
        env_content = f.read()
        dest_url_match = re.search(r'VITE_SUPABASE_URL=(.+)', env_content)
        dest_key_match = re.search(r'SUPABASE_SERVICE_ROLE_KEY=(.+)', env_content)
        
        DEST_URL = dest_url_match.group(1).strip()
        DEST_KEY = dest_key_match.group(1).strip()
except:
    print("Defaulting env")
    DEST_URL = "https://qlylsucoanjohwrkkroq.supabase.co"
    DEST_KEY = "YOUR_SERVICE_KEY" # I hope it works or I need to find it again.

client = create_client(DEST_URL, DEST_KEY)

# Fetch 1 item
res = client.table('filmes').select('*').limit(1).execute()
if res.data:
    print(f"Columns in 'filmes': {list(res.data[0].keys())}")
else:
    print("Table 'filmes' is empty or not accessible.")
