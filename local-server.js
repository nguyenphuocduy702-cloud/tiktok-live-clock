const http = require('http');
const fs = require('fs');
const path = require('path');

const PORT = 8080;
const FILE_PATH = path.join(__dirname, 'tiktok-clock-overlay.html');

const server = http.createServer((req, res) => {
    // Luôn phục vụ file tiktok-clock-overlay.html
    fs.readFile(FILE_PATH, (err, data) => {
        if (err) {
            res.writeHead(500, { 'Content-Type': 'text/plain; charset=utf-8' });
            res.end('Không tìm thấy file tiktok-clock-overlay.html');
            return;
        }
        res.writeHead(200, {
            'Content-Type': 'text/html; charset=utf-8',
            'Access-Control-Allow-Origin': '*'
        });
        res.end(data);
    });
});

server.listen(PORT, '127.0.0.1', () => {
    console.log('========================================================');
    console.log(` Máy chủ Đồng hồ TikTok Live đang chạy tại:`);
    console.log(` -> http://localhost:${PORT}?clean=1`);
    console.log(` -> http://127.0.0.1:${PORT}?clean=1`);
    console.log('========================================================');
    console.log(' Hãy sao chép link trên và dán vào TikTok Live Studio!');
    console.log(' (Giữ cửa sổ này mở trong lúc đang phát Live)');
});
