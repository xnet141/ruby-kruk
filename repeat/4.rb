arr = ["test", 2, ["alex", "nick"]]

puts arr[2][0]

str = "Demo string"

puts str[2,5]

new_arr = str.split
puts new_arr

new_arr2 = str.split("")
puts new_arr2
new_str = new_arr2.join
puts new_str
puts arr.first
arr[0] = "!"
puts arr.inspect
puts arr.length
arr[arr.length] = "!!length!!" #последний элемент -> (length - 1), следующий элемент -> length
puts arr.inspect
puts arr.push("eeeee")
puts arr.inspect
arr << "qwewqeqw"
puts arr.inspect

a, b = 2, 7
puts a = a + b 
puts a.inspect
puts arr.insert 0, "!!insert!!"
puts arr.inspect

puts "----------"
arr.each_with_index do |x , ind|
  puts "#{x}, #{ind}"
  puts x[0] # первый элемент строки
end

puts "-------------------------------------"
puts arr[rand 0..arr.length-1]
puts "-------------------------------------"
puts arr.shuffle[0]
puts "-------------------------------------"
puts arr.sample




