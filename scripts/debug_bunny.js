
import https from 'https';
import fs from 'fs';

const url = "https://iframe.mediadelivery.net/play/407552/63035ec1-c526-4276-8758-7a8dffbe37e4";

console.log(`Fetching ${url}...`);

https.get(url, {
    headers: {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
        'Referer': 'https://dramio.app/'
    }
}, (res) => {
    let raw = '';
    res.on('data', c => raw += c);
    res.on('end', () => {
        console.log(`Status: ${res.statusCode}`);
        console.log(`Length: ${raw.length}`);
        fs.writeFileSync('bunny_dump_full_headers.html', raw);

        // Quick check for the m3u8 pattern
        const m3u8 = raw.match(/https:\/\/[a-z0-9-]+\.b-cdn\.net\/[a-f0-9-]+\/playlist\.m3u8/);
        console.log("M3U8 Match:", m3u8 ? m3u8[0] : "Not Found");

        // Check for server ID specifically if full match fails
        const serverMatch = raw.match(/videoLibraryServerID\s*=\s*["']([^"']+)["']/);
        console.log("Server ID Match:", serverMatch ? serverMatch[1] : "Not Found");
    });
});
