class Sample
  def my_method(arg1, arg2, arg3= :test, arg4 = :test2)
    puts arg1, arg2, arg3, arg4
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

s = Sample.new
s.poetry 32, {first_hash: "hello"}, key1: 1, key2: "test", key3: "Hello!" # передача аргумента и хеша в качестве аргумента
#- хеш идет после обычных аргументов в конце
#- первый хеш обязательно в фигурных скобках

# s.my_method(1, "test", 2, "hi")
# puts "======================"
# s.new_way(arg2: "hello!", arg1: "hi", arg4: 30)

s.sample 'qwer', 11, 42, 'test'