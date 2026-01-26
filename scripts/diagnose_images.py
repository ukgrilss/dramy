
import os
import requests
import concurrent.futures
from supabase import create_client
from dotenv import load_dotenv

load_dotenv('.env.local')

url = os.environ.get("VITE_SUPABASE_URL")
key = os.environ.get("VITE_SUPABASE_ANON_KEY")
supabase = create_client(url, key)

REPORT_FILE = "image_report.txt"
SQL_FIX_FILE = "scripts/fix_broken_images_auto.sql"

def check_url(item):
    url = item.get('capa')
    if not url:
        return item, "NULL/EMPTY"
    
    try:
        # Timeout 3s to be fast
        r = requests.head(url, timeout=3, allow_redirects=True)
        if r.status_code == 200:
            return item, "OK"
        else:
            return item, f"HTTP {r.status_code}"
    except Exception as e:
        return item, f"ERROR {str(e)}"

def main():
    print("🚀 Starting Image Diagnosis...")
    
    # 1. Fetch ALL movies (pagination loop)
    all_movies = []
    offset = 0
    limit = 1000
    while True:
        print(f"Fetching batch {offset}...")
        res = supabase.table('filmes').select('id, titulo, capa').range(offset, offset+limit-1).execute()
        if not res.data:
            break
        all_movies.extend(res.data)
        if len(res.data) < limit:
            break
        offset += limit

    print(f"Total Movies: {len(all_movies)}")
    
    broken = []
    
    print("Checking URLs (this may take a minute)...")
    
    with concurrent.futures.ThreadPoolExecutor(max_workers=20) as executor:
        future_to_item = {executor.submit(check_url, item): item for item in all_movies}
        
        count = 0
        for future in concurrent.futures.as_completed(future_to_item):
            count += 1
            if count % 100 == 0:
                print(f"Checked {count}/{len(all_movies)}...")
                
            item, status = future.result()
            if status != "OK":
                broken.append({
                    "title": item.get('titulo'),
                    "url": item.get('capa'),
                    "status": status,
                    "id": item.get('id')
                })

    print(f"\n✅ Diagnosis Complete. Found {len(broken)} issues.")
    
    # Generate Report
    with open(REPORT_FILE, "w", encoding="utf-8") as f:
        f.write(f"IMAGE DIAGNOSIS REPORT - {len(broken)} ISSUES FOUND\n")
        f.write("=================================================\n\n")
        for b in broken:
            f.write(f"[{b['status']}] {b['title']}\nURI: {b['url']}\nID: {b['id']}\n\n")
            
    print(f"Report saved to {REPORT_FILE}")

if __name__ == "__main__":
    main()
