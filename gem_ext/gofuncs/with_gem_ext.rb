require 'benchmark'
require 'gofuncs'

puts Benchmark.measure{Gofuncs.fibonacci(10)}
