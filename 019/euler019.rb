# ProjectEuler.net Problem 019
# As solved by Manuel Franco <mafraba@gmail.com>
#
# You are given the following information, but you may prefer to do some research for yourself.
#
# 1 Jan 1900 was a Monday.
#
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
#
# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
#
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
#

require 'benchmark'
require 'date'

puts ""
puts "ProjectEuler Problem 19"
puts ""


ans = 0

time = Benchmark.realtime do 
  first = Date.new(1901, 1, 1)
  last = Date.new(2000, 12, 1)
  ans = (first..last).select { |d| d.day == 1 && d.sunday? }.size
end

puts ""
puts "Solution found: #{ans}" if ans
puts "No solution found" if not ans
puts "Time elapsed: #{time*1000} ms"
