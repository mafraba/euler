# ProjectEuler.net Problem 018
# As solved by Manuel Franco <mafraba@gmail.com>
#
#

require 'benchmark'

puts ""
puts "ProjectEuler Problem 18"
puts ""

def read_triangle()
  tr = []
  File.open("triangle.txt", "r").each_line do |line|
    tr << line.split(" ").map(&:to_i)
  end
  tr
end

# The triangle:
triangle = read_triangle

max_path_sum = Hash.new do |hash, key|
  # This hash holds values of maximum path sum for any position in the triangle
  # The 'key' indicates the position in the triangle -> [row, col]
  row, col = *key
  if row < 0 or col <0 or col > row
    0
  else
    hash[key] = triangle[row][col] + [hash[[row-1,col-1]] , hash[[row-1, col]]].max
  end
end

ans = 0

time = Benchmark.realtime do 
    S = triangle.size
    # first we find the position where the max path ends
    idx = (0...S).max_by { |x| max_path_sum[[S-1, x]]}
    # then the answer is the max sum ending there    
    ans = max_path_sum[[S-1, idx]]
end

puts ""
puts "Solution found: #{ans}"
puts "Time elapsed: #{time*1000} ms"
