from supabase import create_client

# SOURCE: DRAMIO (External)
SOURCE_URL = "https://bushotizgnzejxaqovjy.supabase.co"
SOURCE_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ1c2hvdGl6Z256ZWp4YXFvdmp5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjQ4NDcsImV4cCI6MjA2NzE0MDg0N30.5qv0a6EOfkEJR1f9iK6m57O4O2Kb15F_WyyvJMQ76yA"

client = create_client(SOURCE_URL, SOURCE_KEY)

print("Fetching one row from 'dramas' table...")
res = client.table('dramas').select('*').limit(1).execute()

if res.data:
    item = res.data[0]
    print("\nColumns found:")
    for key, value in item.items():
        print(f" - {key}: {str(value)[:50]}...")
else:
    print("No data found or error.")
