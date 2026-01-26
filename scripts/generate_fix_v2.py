import re
import os

# Paths
INPUT_SQL = 'scripts/dramio_full_content.sql'
OUTPUT_SQL = 'scripts/fix_all_missing_images_v2.sql'

def extract_video_id(url):
    match = re.search(r'b-cdn\.net/([a-f0-9\-]+)/', url)
    if match:
        return match.group(1)
    return None

def main():
    if not os.path.exists(INPUT_SQL):
        print(f"Error: Could not find {INPUT_SQL}")
        return

    print("Parsing dump file (V2 - using preview.webp)...")
    
    updates = []
    
    with open(INPUT_SQL, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()
        
        # Matches: 'TITLE', NULL, NULL, 'URL'
        matches = re.findall(r"'([^']+)',\s*NULL,\s*NULL,\s*'([^']+m3u8)'", content)
        
        for title, m3u8_url in matches:
            video_id = extract_video_id(m3u8_url)
            if video_id:
                # V2 CHANGE: Trying preview.webp instead of thumbnail.jpg
                thumb_url = f"https://vz-c2303ad7-0af.b-cdn.net/{video_id}/preview.webp"
                
                safe_title = title.replace("'", "''")
                # Force update even if not NULL, to fix the "wrong" ones from V1
                stmt = f"UPDATE filmes SET capa = '{thumb_url}' WHERE titulo = '{safe_title}';"
                updates.append(stmt)

    print(f"Found {len(updates)} movies with video URLs.")
    
    with open(OUTPUT_SQL, 'w', encoding='utf-8') as f:
        f.write("-- SCREIPT DE CORREÇÃO V2 (preview.webp)\n")
        f.write("-- Tenta usar .webp se o .jpg estava quebrado.\n\n")
        f.write("\n".join(updates))
        f.write("\n\nSELECT 'Update V2 Concluido' as status;\n")

    print(f"Generated {OUTPUT_SQL}")

if __name__ == "__main__":
    main()
