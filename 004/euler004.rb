# ProjectEuler.net Problem 003
# As solved by Manuel Franco <mafraba@gmail.com>
#
# A palindromic number reads the same both ways. The largest palindrome made from the 
# product of two 2-digit numbers is 9009 = 91 x 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.
#
puts "ProjectEuler Problem 4"

def palindrome? (n)
  s = n.to_s
  s == s.reverse
end

max_pal = 0

(100..1000).each do |a|
  (100..1000).each do |b|
    c = a*b
    max_pal = c if (c>max_pal && palindrome?(c))
  end
end

puts "Max palindrome found: #{max_pal}"