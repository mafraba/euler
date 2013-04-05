# ProjectEuler.net Problem 006
# As solved by Manuel Franco <mafraba@gmail.com>
#
# The sum of the squares of the first ten natural numbers is,
#
# 1^2 + 2^2 + ... + 10^2 = 385
#
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)^2 = 552 = 3025
#
# Hence the difference between the sum of the squares of the first ten natural numbers and the 
# square of the sum is 3025  385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and 
# the square of the sum.
#

puts ""
puts "ProjectEuler Problem 6"
puts ""

sum_of_squares = (1..100).inject { |mem, var|  mem + var**2 }
square_of_sums = (1..100).inject(:+)**2

puts ""
puts "Solution found: #{square_of_sums - sum_of_squares}"
