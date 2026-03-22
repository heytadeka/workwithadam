import http.server, os
os.chdir(os.path.dirname(os.path.abspath(__file__)))
server = http.server.HTTPServer(('', 3456), http.server.SimpleHTTPRequestHandler)
server.serve_forever()
