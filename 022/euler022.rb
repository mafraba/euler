# ProjectEuler.net Problem 022
# As solved by Manuel Franco <mafraba@gmail.com>
#
#

require 'benchmark'

puts ""
puts "ProjectEuler Problem 22"
puts ""

# Method to read the file
def read_file
  names = []
  File.open("names.txt", "r").each_line do |line|
    names.push *line.gsub(/\[|\]|"/,"").split(",")
  end
  names
end

# ASCII offset (value of 'A' - 1)
OFFSET = ?A.ord - 1

ans = nil

time = Benchmark.realtime do 
  names = read_file
  # Sort the array
  names.sort!
  # Calculate scores
  scores = names.map.with_index do | v , i |
    value = v.chars.reduce(0) { |t, c| t + c.ord - OFFSET }
    value * (i+1)
  end
  # Answer
  ans = scores.reduce(:+)
end

puts ""
puts "Solution found: #{ans}" if ans
puts "No solution found" if not ans
puts "Time elapsed: #{time*1000} ms"
