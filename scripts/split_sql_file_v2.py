
import os

INPUT_FILE = "scripts/dramio_full_content.sql"
CHUNK_SIZE = 500 # Number of Statements per file

def split_sql():
    print(f"Reading {INPUT_FILE}...")
    
    with open(INPUT_FILE, "r", encoding="utf-8") as f:
        lines = f.readlines()
        
    statements = []
    current_stmt = []
    
    # Simple state machine
    # We collect lines into current_stmt until we see a new "INSERT INTO"
    # The first few lines might be headers.
    
    headers = []
    
    for line in lines:
        if line.startswith("--"):
             # Keep comments?
             if not statements and not current_stmt:
                 headers.append(line)
             else:
                 current_stmt.append(line)
             continue
             
        if line.startswith("INSERT INTO"):
            if current_stmt:
                statements.append("".join(current_stmt))
            current_stmt = [line]
        elif "ALTER TABLE" in line:
             # Treat as a standalone statement or header
             headers.append(line)
        else:
            # Append to current statement (includes SELECTs, WHEREs, multiline strings, blank lines)
            current_stmt.append(line)
             
    # Add last statement
    if current_stmt:
        statements.append("".join(current_stmt))
        
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
            out.write("".join(headers))
            out.write("\n\nBEGIN;\n\n") 
            for stmt in chunk:
                out.write(stmt)
                # out.write("\n") # stmt usually has newline at end from readlines
            out.write("\nCOMMIT;")
            
        print(f"✅ Created {filename} ({len(chunk)} items)")

if __name__ == "__main__":
    split_sql()
