def method1(arg1, &block) 
  method2(&block)
  yield 
  b = block.call
  puts block.inspect
  puts "b = #{b}, #{yield}" # не присвоить блок переменной, для этого есть Proc
end

def method2(&block)
  # чтобы yield, сделаный вот тут выводил на экран "hello from method1 !!"
  block.call
  block.call
end

method1(100) do
  puts "hello from method1 !!"
end

