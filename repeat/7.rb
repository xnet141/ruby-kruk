arr = [[2, 19],["test", 22]]
arr = arr.to_h
puts arr 
arr = arr.to_a
puts arr

puts :test.to_s

puts "test".to_sym.class

hh = {:test => "lalala", :trest => "dadada"}

puts hh.key("dadada")