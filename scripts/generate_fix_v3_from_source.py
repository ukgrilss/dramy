import re
import os

# Paths
INPUT_SQL = 'dramio_full_content.sql'
OUTPUT_SQL = 'scripts/fix_original_covers_v3.sql'

def main():
    if not os.path.exists(INPUT_SQL):
        print(f"Error: Could not find {INPUT_SQL}")
        return

    print("Parsing NEW dump file (V3 - Original Covers)...")
    
    updates = []
    
    with open(INPUT_SQL, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()
        
        # Regex to capture Title and Cover URL
        # INSERT INTO filmes (..., titulo, capa, ...)
        # SELECT 'uuid', 'TITLE', 'URL', ...
        # Based on generate code:
        # SELECT {escape_sql(new_id)}, {escape_sql(title)}, {escape_sql(poster)}, ...
        
        # Pattern: SELECT 'uuid', 'TITLE', 'COVER_URL',
        matches = re.findall(r"SELECT '[^']+',\s*'([^']+)',\s*'([^']+)',", content)
        
        for title, cover_url in matches:
            # Skip if cover is NULL or empty (though generic script handles 'NULL')
            if not cover_url or cover_url == "NULL":
                continue
                
            safe_title = title.replace("'", "''")
            
            # Update Statement
            stmt = f"UPDATE filmes SET capa = '{cover_url}' WHERE titulo = '{safe_title}';"
            updates.append(stmt)

    print(f"Found {len(updates)} movies with ORIGINAL covers.")
    
    with open(OUTPUT_SQL, 'w', encoding='utf-8') as f:
        f.write("-- SCREIPT DE CORREÇÃO V3 (ORIGINAL COVERS)\n")
        f.write("-- Restaura as capas originais do Supabase (bushotiz...)\n\n")
        f.write("\n".join(updates))
        f.write("\n\nSELECT 'Update V3 (Originais) Concluido' as status;\n")

    print(f"Generated {OUTPUT_SQL}")

if __name__ == "__main__":
    main()
