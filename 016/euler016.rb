# ProjectEuler.net Problem 016
# As solved by Manuel Franco <mafraba@gmail.com>
#
# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# 
# What is the sum of the digits of the number 2^1000?
#

require 'benchmark'

puts ""
puts "ProjectEuler Problem 16"
puts ""

ans = nil

time = Benchmark.realtime do 
    ans = (2**1000).to_s.chars.map(&:to_i).reduce(:+)
end

puts ""
puts "Solution found: #{ans}" if ans
puts "No solution found" if not ans
puts "Time elapsed: #{time*1000} ms"
