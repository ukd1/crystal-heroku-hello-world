require "http/server"
ENV["PORT"] ||= "8080"

server = HTTP::Server.new(ENV["PORT"].to_i) do |context|
  context.response.content_type = "text/plain"
  context.response.print "Hello, world!"
end

puts "Listening on http://0.0.0.0:#{ENV["PORT"]}"
server.listen
