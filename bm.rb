require 'benchmark'

puts Benchmark.measure { 10000000.times { Math.cos 1          } }
puts Benchmark.measure { 10000000.times { Math.cos (1 << 100) } }
puts Benchmark.measure { 10000000.times { Math.cos 1.0        } }
puts Benchmark.measure { 10000000.times { Math.cos 1/3r       } }
puts Benchmark.measure { 10000000.times { Math.cos (1<<62)/1r } }
