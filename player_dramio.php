<?php
// player_dramio.php - Bypass Bunny.net Domain Lock
// Usage: player_dramio.php?url=https://iframe.mediadelivery.net/...

// Turn off error reporting to avoid breaking the video stream with warnings
error_reporting(0);

$target_url = isset($_GET['url']) ? $_GET['url'] : '';

if (empty($target_url)) {
    header("HTTP/1.1 400 Bad Request");
    die("No URL provided.");
}

// 1. Initialize cURL for the initial request (likely the iframe HTML)
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $target_url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // Handle potential SSL issues loosely

// 2. THE MAGIC: Spoof the Referer
$headers = [
    'Referer: https://dramio.app/',
    'Origin: https://dramio.app',
    'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
];
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

// 3. Execute
$response = curl_exec($ch);
$http_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
$content_type = curl_getinfo($ch, CURLINFO_CONTENT_TYPE);
curl_close($ch);

// 4. Handle Response Logic
// If we get an HTML page, it's likely the Bunny.net player wrapper. We need to dig out the .m3u8.
if (strpos($content_type, 'text/html') !== false) {
    
    // Regex to find the Master Playlist (.m3u8) hidden in the JS variables
    if (preg_match('/https:\/\/[^"\']+\.m3u8/', $response, $matches)) {
        $m3u8_url = $matches[0];
        
        // Now we fetch the actual M3U8 content using the same spoofed credentials
        $ch2 = curl_init();
        curl_setopt($ch2, CURLOPT_URL, $m3u8_url);
        curl_setopt($ch2, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch2, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($ch2, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch2, CURLOPT_HTTPHEADER, $headers); // Critical: Re-send Dramio headers
        
        $m3u8_content = curl_exec($ch2);
        $m3u8_type = curl_getinfo($ch2, CURLINFO_CONTENT_TYPE);
        curl_close($ch2);
        
        // Serve the M3U8 file to the user's player
        // We set CORS headers so your site can play it
        header("Content-Type: application/vnd.apple.mpegurl");
        header("Access-Control-Allow-Origin: *");
        header("Access-Control-Allow-Methods: GET, OPTIONS");
        
        echo $m3u8_content;
        
    } else {
        // Could not find m3u8. It might be a direct video file or an error page.
        // Just verify if it looks like a soft-403 or error.
        if (strpos($response, 'Forbidden') !== false) {
             header("HTTP/1.1 403 Forbidden");
             echo "Bypass Failed: Bunny.net rejected the request.";
        } else {
             // Pass through whatever we got (maybe it's a captcha?)
             header("Content-Type: text/html");
             echo $response;
        }
    }
} else {
    // If it's not HTML, it might be the .ts segment or m3u8 directly (recursion)
    header("Content-Type: " . $content_type);
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Methods: GET, OPTIONS");
    echo $response;
}
?>
