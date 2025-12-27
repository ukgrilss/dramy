
import urllib.request
import ssl

try:
    # Use unverified context to avoid SSL errors in some environments
    context = ssl._create_unverified_context()
    url = "https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=Pagamento+Confirmado"
    output = "C:/Users/pichau/Desktop/SS1/VulnScanner/cinefy-rewrite/public/mock_pix_qr.png"
    
    print(f"Downloading from {url}...")
    with urllib.request.urlopen(url, context=context) as response, open(output, 'wb') as out_file:
        data = response.read()
        out_file.write(data)
    print("Success: Image saved.")
except Exception as e:
    print(f"Error: {e}")
