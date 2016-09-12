require "socket"
 
#webserver = TCPServer.new('localhost', 2000)
#webserver = TCPServer.new('40.0.33.8', 2000)
webserver = TCPServer.new('0.0.0.0', 2000)
while (session = webserver.accept)
  session.write(Time.now)
  session.print("Hello World!")
  session.close
end

