
import re

INPUT_FILE = "scripts/dramio_full_content.sql"
OUTPUT_FILE = "scripts/update_images.sql"

def restore_images():
    print(f"Reading {INPUT_FILE}...")
    with open(INPUT_FILE, "r", encoding="utf-8") as f:
        content = f.read()

    # Regex to find items with NULL capa but valid video_url
    # INSERT INTO filmes (id, titulo, capa, descricao, video_url, ...
    # SELECT 'id', 'title', NULL, ..., 'url', ...
    
    # We match the specific structure:
    # SELECT 'UUID',  (group 1)
    # 'Title',        (group 2 or just skip)
    # NULL,           (The missing image)
    # (?:'[^']*'|NULL), (Description - match string or NULL)
    # 'URL',          (group 3 - Video URL)
    
    # Python regex for description is tricky because of escaped quotes etc. 
    # But usually these dumps are somewhat consistent.
    
    # Let's try to match primarily on ID and URL, verifying NULL is between them.
    
    updates = []
    
    # Pattern:
    # SELECT 'uuid', 'title', NULL, ... 'https://...playlist.m3u8'
    
    regex = re.compile(r"SELECT\s+'([a-f0-9\-]{36})',\s+'([^']+)',\s+NULL,\s+.*?'(https://[^']+/playlist\.m3u8)'", re.DOTALL)
    
    # This might fail if description has something weird. 
    # Let's use a simpler approach: iterate line by line?
    # No, many descriptions are multiline.
    
    # Let's try scanning for the UUID and the URL, ensuring NULL is in the 3rd slot.
    # Actually, we know the column order is fixed.
    
    matches = regex.findall(content)
    print(f"Regex found {len(matches)} candidates.")
    
    count = 0
    with open(OUTPUT_FILE, "w", encoding="utf-8") as out:
        out.write("-- Image Restoration Script\n")
        out.write("BEGIN;\n\n")
        
        for match in matches:
            uuid = match[0]
            title = match[1]
            video_url = match[2]
            
            # Transform URL
            # https://vz-c2303ad7-0af.b-cdn.net/UUID/playlist.m3u8
            # -> https://vz-c2303ad7-0af.b-cdn.net/UUID/thumbnail.jpg
            
            if "playlist.m3u8" in video_url:
                image_url = video_url.replace("playlist.m3u8", "thumbnail.jpg")
                
                # Escape single quotes in title just in case (though we update by ID)
                safe_title = title.replace("'", "''")
                
                sql = f"UPDATE filmes SET capa = '{image_url}' WHERE id = '{uuid}';\n"
                out.write(sql)
                count += 1
                
        out.write("\nCOMMIT;")
        
    print(f"Generated {count} update statements in {OUTPUT_FILE}")

if __name__ == "__main__":
    restore_images()
