# ProjectEuler.net Problem 018
# As solved by Manuel Franco <mafraba@gmail.com>
#
#

require 'benchmark'

puts ""
puts "ProjectEuler Problem 18"
puts ""

# The triangle:

triangle = [ [75],
             [95, 64,],
             [17, 47, 82],
             [18, 35, 87, 10],
             [20, 04, 82, 47, 65],
             [19, 01, 23, 75, 03, 34],
             [88, 02, 77, 73, 07, 63, 67],
             [99, 65, 04, 28, 06, 16, 70, 92],
             [41, 41, 26, 56, 83, 40, 80, 70, 33],
             [41, 48, 72, 33, 47, 32, 37, 16, 94, 29],
             [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14],
             [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57],
             [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48],
             [63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31],
             [04, 62, 98, 27, 23,  9, 70, 98, 73, 93, 38, 53, 60, 04, 23] ]

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
    puts "#{S-1} #{idx}"
end

puts ""
puts "Solution found: #{ans}" if ans
puts "No solution found" if not ans
puts "Time elapsed: #{time*1000} ms"
