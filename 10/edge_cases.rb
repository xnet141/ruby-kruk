# p = proc {|arg1| puts "hello"}
# p.call("test", 1, 2) # процедуре пофиг на количество аргументов

# ll = -> (arg1) {puts "hello from lambda"} # лямбда чувствительна к количеству аргументов
# ll.call("test", 1, 2) # выдаст ошибку

# l = lambda {|arg1| puts arg1} # лямбда чувствительна к количеству аргументов
# l.call() # выдаст ошибку

def demo(obj)
  puts "before obj call"
  obj.call # внутри вызова произошел return
  puts "after obj call"
end

p = proc do
  puts "I'm inside proc!"
  # return # процедура полностью выходит из программы
end

l = lambda do
  puts "I'm inside proc!"
  return 42 # лямбду выходит из себя - программа продолжает работу
end

puts l.inspect
puts p.inspect


demo(p)

puts "==============="

demo(l)
