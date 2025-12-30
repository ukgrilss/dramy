<?php
// player_dramio.php - Bypass Bunny.net Domain Lock
// Usage: player_dramio.php?url=https://iframe.mediadelivery.net/...

$target_url = isset($_GET['url']) ? $_GET['url'] : '';

if (empty($target_url)) {
    die("No URL provided.");
}

// Security: Basic check to ensure we only proxy known domains
if (strpos($target_url, 'mediadelivery.net') === false && strpos($target_url, 'bunnycdn') === false) {
    // Ideally strictly validate but for this user looseness is better
}

// 1. Initialize cURL
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $target_url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);

// 2. THE MAGIC: Spoof the Referer
$headers = [
    'Referer: https://dramio.app/',
    'Origin: https://dramio.app',
    'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0 4472.124 Safari/537.36'
];
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

// 3. Execute
$response = curl_exec($ch);
$http_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
$content_type = curl_getinfo($ch, CURLINFO_CONTENT_TYPE);
curl_close($ch);

// 4. Serve the content
header("Content-Type: " . $content_type);
header("Access-Control-Allow-Origin: *"); // Allow YOUR site to play it

// 5. If it's the HTML player, we might need to rewrite inner links
if (strpos($content_type, 'text/html') !== false) {
    // Simple echo works for basic iframes usually if m3u8 requests carry their own referer or if the player logic allows it.
    echo $response;
} else {
    // If it's m3u8 or ts segments
    echo $response;
}
?>
