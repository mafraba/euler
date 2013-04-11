# ProjectEuler.net Problem 015
# As solved by Manuel Franco <mafraba@gmail.com>
#
# Starting in the top left corner of a 22 grid, and only being able to move to the right and down, 
# there are exactly 6 routes to the bottom right corner.
# 
# How many such routes are there through a 2020 grid?
# 
#

require 'benchmark'

puts ""
puts "ProjectEuler Problem 15"
puts ""

cache = Hash.new do |hash, n|
    # 'n' being a key composed by [a, b] coordinates indicating the corner we're computing
    a, b = *n
    if a == 0 || b == 0
        hash[n] = 1
    else
        hash[n] = hash[[a-1, b]] + hash[[a, b-1]]
    end
end

ans = nil

time = Benchmark.realtime do 
    ans = cache[[20,20]]
end

puts ""
puts "Solution found: #{ans}" if ans
puts "No solution found" if not ans
puts "Time elapsed: #{time*1000} ms"
