# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n)
  # write your code in Ruby 2.2
  b = n.to_s(2)
  a = []
  incr = 0
  s = false
  b.each_char do |char|
    if char == '1'
      if s
        a.push(incr)
        incr = 0

      else
        s = true
      end
    else
      incr += 1
    end  
  end
  a.max || 0
end

puts solution(1162)