require 'quartz'
require 'benchmark'

client = Quartz::Client.new(file_path: 'main.go')

puts Benchmark.measure{client[:resolver].call('Fibonacci', 'Index' => 1)}
