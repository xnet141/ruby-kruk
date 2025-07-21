def method1(arg1, &block)  #  &(амперсанд значит, что будет передан блок)
  # method2(&block)
  y = yield arg1
  b = block.call arg1

  puts y.class
  puts b.class
  puts yield(arg1).class
  puts block.class
  puts "b = #{b}, #{y}" 
end

def method2(&b)
  # чтобы yield, сделаный вот тут выводил на экран "hello from method1 !!"
  b.call
  b.call
end

method1(100) do |var|
  puts "hello from method1 !!"
  var ** 2
end

