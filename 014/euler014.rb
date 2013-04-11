# ProjectEuler.net Problem 014
# As solved by Manuel Franco <mafraba@gmail.com>
#
# The following iterative sequence is defined for the set of positive integers:
#
# n -> n/2 (n is even)
# n -> 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13  40  20  10  5  16  8  4  2  1
#
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.
#

require 'benchmark'

puts ""
puts "ProjectEuler Problem 13"
puts ""

cache = Hash.new do |hash, n|
    # 'n' being the number, 'hash[n]' the lenght of the produced sequence    
    if n==1
        hash[1] = 1
    elsif n.even?            
        hash[n] = hash[n/2] + 1
    else
        hash[n] = hash[n*3+1] + 1
    end
end

ans = nil

time = Benchmark.realtime do 
    ans = (1...1000000).max_by{ |e| cache[e] }
end

puts ""
puts "Solution found: #{ans} => #{cache[ans]}" if ans
puts "No solution found" if not ans
puts "Time elapsed: #{time*1000} ms"
