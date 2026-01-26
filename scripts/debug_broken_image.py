
import os
from supabase import create_client
from dotenv import load_dotenv

load_dotenv('.env.local')

url = os.environ.get("VITE_SUPABASE_URL")
key = os.environ.get("VITE_SUPABASE_ANON_KEY")

supabase = create_client(url, key)

print("Searching for 'QUANDO MEU EX SE TORNA MEU GINECOLOGISTA'...")
res = supabase.table('filmes').select('*').ilike('titulo', '%GINECOLOGISTA%').execute()

if res.data:
    for item in res.data:
        print(f"I: {item['id']}")
        print(f"T: {item['titulo']}")
        print(f"C: {item['capa']}")
else:
    print("Not found.")
