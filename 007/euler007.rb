# ProjectEuler.net Problem 007
# As solved by Manuel Franco <mafraba@gmail.com>
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 
# What is the 10 001st prime number?
#

require 'prime'

puts ""
puts "ProjectEuler Problem 7"
puts ""

ans = Prime.first(10001).last

puts ""
puts "Solution found: #{ans}"
