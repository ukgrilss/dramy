<?php
// player_dramio.php - Bypass Bunny.net Domain Lock (Version 4.0 - Decompression Fix)
// Usage: player_dramio.php?url=https://iframe.mediadelivery.net/...

error_reporting(0);

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
    
    // CRITICAL: Handle GZIP/Brotli compression automatically
    curl_setopt($ch, CURLOPT_ENCODING, ''); 
    
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

// 1. Fetch the Target
$result = fetch_with_bypass($target_url);
$response = $result['content'];
$content_type = $result['info']['content_type'];

// 2. Logic to detect HTML vs Playlist
if (strpos($content_type, 'text/html') !== false) {
    // Regex to find the Master Playlist (.m3u8) hidden in the HTML sources or variables
    // Look for: src="https://..." or "https://..." that ends in .m3u8
    // Simple robust regex: https://[something].m3u8
    if (preg_match('/https:\/\/[^"\']+\.m3u8/', $response, $matches)) {
        
        $m3u8_url = $matches[0];
        
        // Fetch the M3U8 content
        $m3u8_result = fetch_with_bypass($m3u8_url);
        $m3u8_content = $m3u8_result['content'];
        
        // Rewrite Logic:
        // Identify base URL for relative segments
        $base_url = dirname($m3u8_url);
        
        // If segments are relative, we make them absolute to the Bunny server
        // This allows the player to request them directly.
        // IF Bunny checks referer on segments, we might need to proxy them too.
        // Usually, only the m3u8 request and key requests are strictly checked.
        // Let's try Direct Link first (Base URL + Segment).
        
        $lines = explode("\n", $m3u8_content);
        $new_content = "";
        foreach ($lines as $line) {
            $line = trim($line);
            if (empty($line)) continue;
            
            if ($line[0] == '#') {
                // If it's a key line (EXT-X-KEY), we might need to proxy it if it has a URI
                // #EXT-X-KEY:METHOD=AES-128,URI="key.php"
                if (strpos($line, 'URI="') !== false) {
                    // Rewrite URI to be absolute or proxied if needed. 
                    // For now, let's just make it absolute so the player can try to fetch it.
                     $line = preg_replace_callback('/URI="([^"]+)"/', function($m) use ($base_url) {
                        $uri = $m[1];
                        if (strpos($uri, 'http') !== 0) {
                             return 'URI="' . $base_url . '/' . $uri . '"';
                        }
                        return 'URI="' . $uri . '"';
                    }, $line);
                }
                $new_content .= $line . "\n";
            } else {
                // Segment line
                if (strpos($line, 'http') === 0) {
                    $new_content .= $line . "\n";
                } else {
                    $new_content .= $base_url . '/' . $line . "\n";
                }
            }
        }
        
        header("Content-Type: application/vnd.apple.mpegurl");
        header("Access-Control-Allow-Origin: *");
        echo $new_content;
        
    } else {
        // Fallback: If no m3u8 found
        header("Content-Type: text/html");
        echo $response;
    }
} else {
    // If it's already media, pass it through
    header("Content-Type: " . $content_type);
    header("Access-Control-Allow-Origin: *");
    echo $response;
}
?>
