import re
import os

# Paths
INPUT_SQL = 'scripts/dramio_full_content.sql'
OUTPUT_SQL = 'scripts/fix_all_missing_images.sql'

def extract_video_id(url):
    # Extract UUID from: https://vz-c2303ad7-0af.b-cdn.net/UUID/playlist.m3u8
    match = re.search(r'b-cdn\.net/([a-f0-9\-]+)/', url)
    if match:
        return match.group(1)
    return None

def main():
    if not os.path.exists(INPUT_SQL):
        print(f"Error: Could not find {INPUT_SQL}")
        return

    print("Parsing dump file...")
    
    updates = []
    
    # Regex to capture Title and M3U8 URL from the INSERT statements
    # Looking for patterns like: 'TITLE', ..., 'https://...m3u8'
    # This is a heuristic regex tailored to the dump format we saw earlier
    # Example line: SELECT 'uuid', 'TITLE', NULL, NULL, 'URL', ...
    
    # We'll stick to a simpler line-by-line processing if possible, or a flexible regex
    # The dump used SELECT based inserts based on previous grep output.
    
    count = 0
    with open(INPUT_SQL, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()
        
        # Matches: 'TITLE', NULL, NULL, 'URL'
        # precise matching depends on the file structure.
        # Based on previous grep: SELECT 'uuid', 'TITLE', NULL, NULL, 'http...m3u8'
        
        # Pattern: '([^']+)', NULL, NULL, '([^']+)'
        matches = re.findall(r"'([^']+)',\s*NULL,\s*NULL,\s*'([^']+m3u8)'", content)
        
        for title, m3u8_url in matches:
            video_id = extract_video_id(m3u8_url)
            if video_id:
                thumb_url = f"https://vz-c2303ad7-0af.b-cdn.net/{video_id}/thumbnail.jpg"
                # Escape single quotes in title for SQL
                safe_title = title.replace("'", "''")
                
                # Generate UPDATE statement safe for existing data
                # We update by TITLE because IDs are unreliable
                stmt = f"UPDATE filmes SET capa = '{thumb_url}' WHERE titulo = '{safe_title}' AND (capa IS NULL OR capa = '');"
                updates.append(stmt)
                count += 1

    print(f"Found {count} movies with video URLs.")
    
    with open(OUTPUT_SQL, 'w', encoding='utf-8') as f:
        f.write("-- SCREIPT DE CORREÇÃO GLOBAL DE IMAGENS\n")
        f.write("-- 1. REMOVE DUPLICATAS SEM IMAGEM (Limpeza)\n")
        f.write("""
DELETE FROM filmes 
WHERE id IN (
    SELECT duplicate.id 
    FROM filmes AS duplicate 
    JOIN filmes AS original ON duplicate.titulo = original.titulo 
    WHERE duplicate.capa IS NULL 
    AND original.capa IS NOT NULL 
    AND duplicate.id != original.id
);
\n""")
        f.write("-- 2. ATUALIZA TODAS AS CAPAS FALTANTES PELO TÍTULO\n")
        f.write("\n".join(updates))
        f.write("\n\n-- 3. CONFIRMAÇÃO\n")
        f.write("SELECT 'Processo concluido. Verifique o painel.' as status;\n")

    print(f"Generated {OUTPUT_SQL} with {count} update statements.")

if __name__ == "__main__":
    main()
