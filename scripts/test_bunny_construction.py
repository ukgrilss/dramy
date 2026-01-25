
import requests

# Base host from user snippet
BASE_HOST = "https://vz-c2303ad7-0af.b-cdn.net"

# ID from the Iframe URL found in logs for "AMOR A TODAVELOCIDADE"
# Iframe: https://iframe.mediadelivery.net/play/407552/98d70b57-423a-4d96-b285-e49f150ae0fe
IFRAME_ID = "98d70b57-423a-4d96-b285-e49f150ae0fe"

# ID from User Snippet (for comparison - maybe different video?)
USER_ID = "5719bbca-34ec-40a5-9ddc-7967300b87f4"

def check(uuid):
    url = f"{BASE_HOST}/{uuid}/playlist.m3u8"
    print(f"Checking: {url}")
    try:
        # Standard headers, maybe not even needed for m3u8 if public?
        res = requests.head(url)
        print(f"Status: {res.status_code}")
        
        if res.status_code != 200:
             # Try GET just in case HEAD is blocked
             res = requests.get(url, stream=True)
             print(f"GET Status: {res.status_code}")
             
    except Exception as e:
        print(f"Error: {e}")

print("--- Testing Iframe ID ---")
check(IFRAME_ID)

print("\n--- Testing User ID (Control) ---")
check(USER_ID)
