class Sample
  def my_method(arg1, arg2, arg3= :test, arg4 = :test2)
    puts arg1, arg2, arg3, arg4
  end 
  
  def my_method_test(arg3= :test, arg4 = :test2, arg1, arg2)
    puts arg2
  end

  def my_method_test222(arg1, arg2, arg4, arg3)
    puts arg2, arg4, arg1, arg3
  end  
  
  def my_method_test333(h, h2)
    puts h, h2
  end

  def new_way(arg1:, arg2:, arg3: :test, arg4: 100) # форма записи аргументов, напоминающая хеши
    puts arg1, arg2, arg3, arg4
    puts arg2.class
  end

  def poetry(num, h1, h2)
    puts num
    puts h1.inspect
    puts h2.inspect
  end

  def sample(age, name, *args) # *args массив с любым кол-ом элементов (можно без него)
    #puts args.inspect
    puts age
    puts name
    args.each do |a|
      puts a
    end
  end
end

sample = Sample.new
sample.my_method 111, 222, arg4: 333, arg3: 444
puts "==============="
sample.my_method 111, 222, 333, 444
puts "==============="
sample.my_method_test 111, 222, 333, 444
puts "==============="
sample.my_method_test222 111, 222, 333, 444
puts "===============11"
sample.new_way arg3: 333, arg1: 111, arg2: 222, arg4: 444
puts "===============22"
sample.my_method_test333({arg4: 88888}, arg3: 0000, sdf: 4343)
puts "===============33"
sample.poetry 42, {arg4: 88888}, arg3: 0000, sdf: 4343
