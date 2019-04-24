require 'benchmark'
def solution(results)
    # write your code in Ruby 2.2
    
    results = results.group_by{|e| e}
    c = 0

    results.each do |k,v|
        if results.has_key?(k+1)
            c += v.size
        end    
    end    
    c
end


arr = []
1000000.times do
    arr << rand(1000000)
end    
p 'came'
puts Benchmark.measure{
    puts solution(arr)
}