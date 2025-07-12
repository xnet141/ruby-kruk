arr = []

20.times { |x| arr << x + 1 }
puts arr.inspect

arr.map! { |n| n = n**2 }
puts arr.inspect

(1..10).each { |el| puts "#{el} --> #{el ** 2}" }

d = (1..10)
d = d.to_a
puts d.inspect

c = (1..15)
c.map {|x| puts x}

puts rand 1..55

