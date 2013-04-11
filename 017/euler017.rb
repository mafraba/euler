# ProjectEuler.net Problem 017
# As solved by Manuel Franco <mafraba@gmail.com>
#
#

require 'benchmark'
require 'numbers_and_words'

puts ""
puts "ProjectEuler Problem 17"
puts ""

ans = nil

time = Benchmark.realtime do 
    ans = (1..1000).inject(0) do |mem, var|
      puts var.to_words(hundreds_with_union: true).gsub(/\sand\z/,"").gsub(/\s+|-/,"")
      mem += var.to_words(hundreds_with_union: true).gsub(/\sand\z/,"").gsub(/\s+|-/,"").size
    end
end

puts ""
puts "Solution found: #{ans}" if ans
puts "No solution found" if not ans
puts "Time elapsed: #{time*1000} ms"
