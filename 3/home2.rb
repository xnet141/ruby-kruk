arr = ["one", "two", "three", "four", "five"]

puts arr[rand(0...arr.length)] # ... - это когда НЕ нужно включать верхнюю границу
puts arr.shuffle[0]
puts arr.shuffle.first
puts arr.sort_by { rand }.first
puts arr.sample # самая простая конструкция - берет случайный элемент из массива
