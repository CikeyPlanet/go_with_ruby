# jimson
require "socket"
require "json"
require 'benchmark'

socket = TCPSocket.new "localhost", "1234"

b = {
  method: "Resolver.Fibonacci",
  params: [{ :Index => 1 }],
  :id     => "0" # id is just echo'ed back to the client
}
socket.write(JSON.dump(b))
puts Benchmark.measure{JSON.load(socket.readline)}
