require 'webrick'
Dir.chdir(File.dirname(File.expand_path(__FILE__)))
server = WEBrick::HTTPServer.new(Port: 3456, DocumentRoot: Dir.pwd, BindAddress: '127.0.0.1')
trap('INT') { server.shutdown }
server.start
