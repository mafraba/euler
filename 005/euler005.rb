# ProjectEuler.net Problem 005
# As solved by Manuel Franco <mafraba@gmail.com>
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#
puts ""
puts "ProjectEuler Problem 5"
puts ""

# It's all about finding the least common multiple of a
# sequence of natural numbers
def lcm(seq)
  s = seq.to_a
  n = 2
  factors = []
  # Until all numbers in the sequence have been reduced to 1
  until s.all? { |e| e==1 }
    # puts "#{s.to_s} / #{factors} / #{n}"
    # If any number in the sequence divides evenly by 'n'
    if s.any? { |e| e % n == 0 }
      # Divide the evenly divisible numbers
      s.map! { |e| e % n == 0 ? e / n : e }
      # And add 'n' to 'factors'
      factors << n      
    else # If not, increment n
      n += 1
    end    
  end

  factors.reduce(1) { |sum, val| sum *= val }
end

ans = lcm(1..20)

puts ""
puts "Solution found: #{ans}"
