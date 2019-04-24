require 'benchmark'
def solution(a, k)
    # write your code in Ruby 2.2
    
    l = a.size
    return [] if l == 0
    if k > l
         k = -(k % l)
    else
        k = -k
    end    
    
    new_array = []
    i = -1
    while(l > 0)
        new_array[i+=1] = a[k]
        k = k + 1
        l -= 1  
    end
    return new_array    
  end
  a = (1..10).to_a  
puts Benchmark.measure{
puts solution(a, 12)}