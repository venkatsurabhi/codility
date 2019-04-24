require 'benchmark'
def solution(x, y, d)
    # write your code in Ruby 2.2
    return 0 if x == y
    l = y-x
    z = l/d
    k = l % d
    k >= 1 ? (z +1) : z 
  end

puts Benchmark.measure{
  puts solution(3, 999111321, 2)
}