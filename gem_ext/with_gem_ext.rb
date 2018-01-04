require 'benchmark'
require 'gofuncs'

Benchmark.measure do
  10000.times{Gofuncs.add(14,15)}
end
