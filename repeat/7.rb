arr = [[2, 19],["test", 22]]
arr = arr.to_h
puts arr 
arr = arr.to_a
puts arr

puts :test.to_s

puts "test".to_sym.class

hh = {:test => "lalala", :trest => "dadada"}

puts hh.key("dadada")


countries = [
"Франция",
"Германия",
"Россия"
]

capitals = [
  "Париж",
  "Берлин",
  "Москва"
]

data = {}

countries.each_with_index do |country, i|
  data[country] = capitals[i]
end

puts data.inspect

data = data.to_a.shuffle.to_h

puts data

arr = []

arr = countries.zip(capitals) #rr = countries.zip capitals

puts '-----'

puts arr.inspect
arr = arr.to_h
puts arr.inspect
