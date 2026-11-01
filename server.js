'use strict';
const http = require('http');
const port = Number(process.env.PORT || 3000);
const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'application/json; charset=utf-8' });
  res.end(JSON.stringify({ message: 'Hello from Docker!', lab: 'DevOps Lab 2 — Lean Principle', timestamp: new Date().toISOString(), node_version: process.version, platform: process.platform }));
});
server.listen(port, '0.0.0.0', () => console.log(`Server running at http://0.0.0.0:${port}`));
