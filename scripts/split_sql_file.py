
import os

INPUT_FILE = "scripts/dramio_full_content.sql"
CHUNK_SIZE = 500 # Number of Statements per file

def split_sql():
    print(f"Reading {INPUT_FILE}...")
    
    with open(INPUT_FILE, "r", encoding="utf-8") as f:
        lines = f.readlines()
        
    # Filter only SQL statements (lines starting with INSERT)
    # But keep headers for the first one?
    # Actually, the file has headers at top.
    
    # Let's just grab the INSERT statements
    statements = []
    current_stmt = ""
    
    for line in lines:
        if line.strip().startswith("INSERT INTO"):
            if current_stmt:
                statements.append(current_stmt)
            current_stmt = line
        elif line.strip().startswith("SELECT") or line.strip().startswith("WHERE") or line.strip().startswith(");") or line.strip() == "":
             current_stmt += line
        else:
             # Header comments or ALTER TABLE
             if "ALTER TABLE" in line:
                 statements.insert(0, line)
             pass
             
    # Add last statement
    if current_stmt:
        statements.append(current_stmt)
        
    print(f"Found {len(statements)} statements. Splitting...")
    
    total_parts = (len(statements) // CHUNK_SIZE) + 1
    
    for i in range(total_parts):
        start = i * CHUNK_SIZE
        end = start + CHUNK_SIZE
        chunk = statements[start:end]
        
        if not chunk: continue
        
        filename = f"scripts/dramio_import_part_{i+1}.sql"
        with open(filename, "w", encoding="utf-8") as out:
            out.write(f"-- PART {i+1} OF {total_parts}\n")
            out.write("BEGIN;\n\n") # Transaction for safety
            for stmt in chunk:
                out.write(stmt)
                out.write("\n")
            out.write("\nCOMMIT;")
            
        print(f"✅ Created {filename} ({len(chunk)} items)")

if __name__ == "__main__":
    split_sql()
