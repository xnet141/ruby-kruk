#break vs exit vs return

arr = []

print "введите кол-во чисел для возведения в степень: "
quantity = gets.to_i

quantity.times do |n|
  arr << (n + 1) ** 2
end

puts arr.inspect

arr2 = (1..10).to_a
puts arr2.inspect

arr3 = []
(1..15).each do |n|
  arr3 << n ** 2
end
puts arr3.inspect