require 'net/http'

http_response = Net::HTTP.get_response('www.google.com', '/')
puts http_response.code

puts "Parsing HTTP Response -----------------------"

# require 'uri'
# require 'json'

# uri = URI('http://www.example.com/sample.json')
# response = Net::HTTP.get(uri)
# json_response = JSON(response)

# puts json_response

puts "Receiving HTTP Requests -----------------"

require 'webrick'

# speciying port to listen to http request
http_server = WEBrick::HTTPServer.new(:Port => 3000)

class MyHTTPServlet < WEBrick::HTTPServlet::AbstractServlet
  def do_GET(http_request, http_response) 
    http_response.body = "You requested #{http_request.path}"
  end
end

http_server.mount('', MyHTTPServlet)

#stop the server using Control+C
trap('INT') {http_server.shutdown}
http_server.start
