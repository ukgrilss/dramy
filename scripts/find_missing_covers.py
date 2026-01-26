
import re

INPUT_FILE = "scripts/dramio_full_content.sql"

def find_missing_images():
    print(f"Scanning {INPUT_FILE} for missing images...")
    
    with open(INPUT_FILE, "r", encoding="utf-8") as f:
        content = f.read()

    # Regex to capture INSERT/SELECT statements
    # We look for SELECT statements where the 3rd field is NULL (based on the structure seen previously)
    # INSERT INTO filmes (id, titulo, capa, ...) SELECT 'uuid', 'Title', NULL, ...
    
    # Pattern explanation:
    # SELECT 'uuid', 'Title', NULL, ...
    # We capture the Title.
    
    # Notes on the SQL format observed:
    # SELECT 'uuid', 'Title', NULL, ...
    # Sometimes there are newlines.
    
    missing_titles = []
    
    # Naive line-by-line approach might fail with multiline, but let's try a robust regex on the whole file or chunks.
    # The pattern seems to be: SELECT '...', '...', NULL,
    
    pattern = r"SELECT\s+'[^']+',\s+'([^']+)',\s+NULL,"
    
    matches = re.finditer(pattern, content)
    
    for match in matches:
        title = match.group(1)
        missing_titles.append(title)
        
    print(f"Found {len(missing_titles)} titles with NULL images.")
    
    with open("scripts/missing_images_list.txt", "w", encoding="utf-8") as out:
        for title in missing_titles:
            out.write(title + "\n")
            
    # Print first 10 for preview
    for i, title in enumerate(missing_titles[:10]):
        print(f"{i+1}. {title}")

if __name__ == "__main__":
    find_missing_images()
