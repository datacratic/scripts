http = require('http')
server = http.createServer (req, res) ->
    body = ''
    req.on 'data', (x) -> body += x
    req.on 'end', -> 
    console.log req.url
    console.log req.headers
    console.log(body)
    res.writeHead(200, {'Content-Type': 'text/plain'})
    res.end("1")
server.listen(10002, '64.254.247.171')
console.log('Server running at http://64.254.247.171:10002')
