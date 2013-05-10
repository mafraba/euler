require 'prime'

class Fixnum  
  def divisors_brute
    divs = [1]
    i = 2
    top = self / 2
    while i <= top
      divs << i if self % i == 0
      i = i + 1
    end    
    divs
  end

  def divisors_sqrt
    divs = [1]
    i = 2
    top = self**(0.5)
    while i <= top
      divs << i if self % i == 0 and not divs.include?(i)
      divs << (self/i) if self % i == 0 and not divs.include?(self/i)
      i = i + 1
    end    
    divs
  end

  # alias
  alias divisors divisors_sqrt

  def sum_of_divisors
    return self if self <= 1
    t = self.prime_division.map do |n, e| 
      if e > 1
        (n**(e+1) -1)/(n-1)
      else
        n+1
      end
    end
    t.reduce(:*) - self
  end
end