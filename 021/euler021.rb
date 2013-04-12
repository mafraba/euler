# ProjectEuler.net Problem 021
# As solved by Manuel Franco <mafraba@gmail.com>
#
#

require 'benchmark'

puts ""
puts "ProjectEuler Problem 21"
puts ""

# Monkey patching numbers...
class Fixnum
  # Have all divisors of the number
  def divisors
    #root = (self**0.5).floor
    (1...self).select { |e| self % e == 0 }
  end  
  # Is it an amicable number?
  def amicable?()
    # Compute sum of my divisors
    sum_of_divisors = divisors.reduce(:+)
    # Am I the sum of the divisors of the sum of my divisors? Then I'd be an amicable number...
    self!=sum_of_divisors and self == sum_of_divisors.divisors.reduce(:+)
  end
end

ans = nil

time = Benchmark.realtime do 
  ans = (2...10000).select(&:amicable?).reduce(:+)
end

puts ""
puts "Solution found: #{ans}" if ans
puts "No solution found" if not ans
puts "Time elapsed: #{time*1000} ms"
