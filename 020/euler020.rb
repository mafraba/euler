# ProjectEuler.net Problem 020
# As solved by Manuel Franco <mafraba@gmail.com>
#
#

require 'benchmark'

puts ""
puts "ProjectEuler Problem 20"
puts ""


ans = 0

time = Benchmark.realtime do 
  ans = (1..100).reduce(:*).to_s.chars.map(&:to_i).reduce(:+)
end

puts ""
puts "Solution found: #{ans}" if ans
puts "No solution found" if not ans
puts "Time elapsed: #{time*1000} ms"
