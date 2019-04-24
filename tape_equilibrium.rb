require 'benchmark'
def solution(a)
  c = a.size
  min = []
  sum = a.inject(:+)
  count = 0
  for i in 0..c-1
    break if i == c-1
    count += a[i]
    first = count
    second = sum-count
    val = first-second
    min << (val < 0 ? val * -1 : val)
  end
  min.min  
end    


arr = []
1000000.times do
    arr << rand(1000000)
end    
p 'came'
puts Benchmark.measure{
    puts solution(arr)
}