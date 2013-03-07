# ProjectEuler.net Problem 001
# As solved by Manuel Franco <mafraba@gmail.com>
#
# If we list all the natural numbers below 10 that are multiples
# of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
#
puts "ProjectEuler Problem 1"

ans = (0...1000).inject do |sum, n|  
  # Check if multiple of 3 or 5
  multiple = (n % 3 == 0 || n % 5 == 0)
  # Add if multiple
  sum += n if multiple  
  # Return
  sum
end

puts ans