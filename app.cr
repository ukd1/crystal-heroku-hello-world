require "http/server"

port = ENV["PORT"].nil? ? 8080 : ENV["PORT"].to_i

server = HTTP::Server.new(port) do |request|
  HTTP::Response.ok "text/plain", "Hello, world!"
end

puts "Listening on http://0.0.0.0:#{port}"
server.listen