# ProjectEuler.net Problem 010
# As solved by Manuel Franco <mafraba@gmail.com>
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.
#

puts ""
puts "ProjectEuler Problem 10"
puts ""

require 'prime'

MAX = 2000000

ans = Prime.take_while { |p| p < MAX }.reduce(&:+)

puts ""
puts "Solution found: #{ans}" if ans
puts "No solution found" if not ans
