<?php
// player_dramio.php - Bypass Bunny.net Domain Lock (Version 5.0 - Direct CDN Rewrite)
// Usage: player_dramio.php?url=https://iframe.mediadelivery.net/...

error_reporting(0);

// Disable caching
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");

$target_url = isset($_GET['url']) ? $_GET['url'] : '';

if (empty($target_url)) {
    header("HTTP/1.1 400 Bad Request");
    die("No URL provided.");
}

function fetch_with_bypass($url) {
    if (strpos($url, 'https') !== 0 && strpos($url, 'http') !== 0) {
        return "";
    }
    
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_ENCODING, ''); // Handle GZIP
    
    $headers = [
        'Referer: https://dramio.app/',
        'Origin: https://dramio.app',
        'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
        'Sec-Fetch-Dest: iframe',
        'Sec-Fetch-Mode: navigate',
        'Sec-Fetch-Site: cross-site'
    ];
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    
    $response = curl_exec($ch);
    $info = curl_getinfo($ch);
    curl_close($ch);
    
    return ['content' => $response, 'info' => $info];
}

// 1. Fetch the Iframe HTML
$result = fetch_with_bypass($target_url);
$response = $result['content'];

// 2. Extract Javascript Variable with M3U8
// Matches: "https://... .m3u8"
if (preg_match('/https:\/\/[^"\']+\.m3u8/', $response, $matches)) {
    
    $m3u8_url = $matches[0];
    
    // 3. Fetch the M3U8 Content
    $m3u8_result = fetch_with_bypass($m3u8_url);
    $m3u8_content = $m3u8_result['content'];
    
    // 4. Determine Base URL for resolving relative paths
    $base_url = dirname($m3u8_url);
    
    // 5. Rewrite the Playlist
    // We want the player to connect DIRECTLY to Bunny CDN for segments/sub-playlists
    // because we verified that direct access (once URL is known) DOES NOT require Referer.
    
    $lines = explode("\n", $m3u8_content);
    $new_content = "";
    
    foreach ($lines as $line) {
        $line = trim($line);
        if (empty($line)) continue;
        
        if ($line[0] == '#') {
            // Pass through metadata lines
            $new_content .= $line . "\n";
        } else {
            // It is a URI line (sub-playlist or segment)
            if (strpos($line, 'http') === 0) {
                // Already absolute
                $new_content .= $line . "\n";
            } else {
                // Relative -> Make Absolute
                $new_content .= $base_url . '/' . $line . "\n";
            }
        }
    }
    
    // 6. Serve the Rewritten Playlist
    header("Content-Type: application/vnd.apple.mpegurl");
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Methods: GET, OPTIONS");
    echo $new_content;

} else {
    // Fallback: If regex fails, dump 404 or original HTML to help debug
    if (strpos($response, 'Forbidden') !== false) {
        header("HTTP/1.1 403 Forbidden");
    } else {
        header("Content-Type: text/html");
    }
    echo $response;
}
?>
