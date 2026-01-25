
import requests
import re

URL = "https://iframe.mediadelivery.net/play/407552/98d70b57-423a-4d96-b285-e49f150ae0fe"

HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
    "Referer": "https://dramio.app", 
    "Origin": "https://dramio.app"
}

def debug():
    print(f"Fetching {URL}")
    res = requests.get(URL, headers=HEADERS)
    print(f"Status: {res.status_code}")
    print("Content Preview (first 1000 chars):")
    print(res.text[:1000])
    
    # Try regex
    match = re.search(r'https?:(\\\/\\\/|\/\/)[a-zA-Z0-9\-\._~:\/\?#\[\]@!$&\'\(\)\*\+,;=%]+\.m3u8', res.text)
    if match:
        print(f"Match found: {match.group(0)}")
    else:
        print("No m3u8 match found.")
        
    # Check for "vz-" pattern specifically
    if "vz-" in res.text:
        print("Found 'vz-' in text!")
        # locate it
        idx = res.text.find("vz-")
        print(res.text[idx:idx+100])

debug()
