# ProjectEuler.net Problem 009
# As solved by Manuel Franco <mafraba@gmail.com>
#
# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
#
#         a^2 + b^2 = c^2
#
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#
# Find the product abc.
#

puts ""
puts "ProjectEuler Problem 9"
puts ""

ans = nil

# We're looking for c = X - a - b = sqrt(a*a + b*b)
X = 1000

for a in (0..X)
  for b in (a..X)
    c = X - a - b
    ans = [ a , b , c ] if a*a + b*b == c*c
  end
end  

puts ""
puts "Solution found: #{ans} => #{ans[0]*ans[1]*ans[2]}" if ans
puts "No solution found" if not ans
