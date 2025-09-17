puts "test" 

puts "test".bytes

puts "test".bytes.map {|i| i.to_s(2)}

puts "="* 20

puts "тест".bytes

puts "="* 20

puts "тест".bytes.map {|i| i.to_s(2)}

puts "="* 20

puts "тест".unpack("U*")