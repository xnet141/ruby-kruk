hash = {}

hh = {:name => "test", :surname => "test2"}
hh = {name: "test", surname: "test2", drop: "test3"} # более коротко и современно


puts hash["alex"] = "super"

puts hash[:alex] = "super" # запись в символах предпочтительнее

puts :test.to_s

puts "cat".to_sym

puts hh.key("test") # поиск ключа по значению

hh.each do |key, value|
  puts key, value
end

puts hh.keys # все ключи
puts hh.values.inspect # все значения
