
# p = proc { |arg1| puts "hello proc" } # процедуре можно передать любое кол-во аргументов (от 0 до бесконечности)
# p.call "test", 1, 3

# my_l2 = -> (arg1) { puts "thin arrow"} # my_l2 = lambda {|arg1| puts "thin arrow"}
# my_l2.call "test" # лямбда нужно передавать то кол-во аргументов, что ожидается

def demo(obj)
  puts "before obj call"
  t = obj.call 
  puts t
  puts "after obj call"
end

p = proc do
  puts "I`m inside proc!"
  return 42 # (выходим отовсюду-уточнить)внутри вызова произошел return, так как return в процедуре, то мы вышли и из метода (в контексте которого вызывалась процедура) и из всей программы 
end

l = lambda do
  puts "I`m inside lambda!"
  return 42  # внутри вызова произошел return, мы вышли из lamda, далее выполнился остальной код
end

result = demo(l)
puts result.inspect
puts "test"

puts "======================"

puts l.inspect
puts p.inspect
