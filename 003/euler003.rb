# ProjectEuler.net Problem 003
# As solved by Manuel Franco <mafraba@gmail.com>
#
# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?
#
puts "ProjectEuler Problem 3"

MAX = 600851475143

# Upper bound for possible prime factor
top = MAX
# Collection of prime numbers
$primes = [2]
n = 1
lpf = 1

def prime( n )
  return false if n < 2
  $primes.include?(n) or not $primes.find { |p| n % p == 0 }
end

while n <= top do  
  # See if n is prime
  if prime(n)
    $primes << n  # add each new prime number found
    while (top % n == 0)
      top = top / n
      lpf = n
      puts n
    end
  end
  # Next odd number
  n = n + 2
end
