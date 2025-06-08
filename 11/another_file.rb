require_relative 'my_lib'

class AnotherParent
  include MyLib ## можно сделать include и extend в один класс одновременно
  extend MyLib # добавляет методы модуля для самого класса
end

AnotherParent.helper2
obj1 = AnotherParent.new
obj1.helper2

class AnotherClass < AnotherParent
  include MyLib # добавляет методы модуля для экземпляров класса

  def my_instance_method
    puts "Hi from AnotherClass!"
    helper2
    helper1
  end
end

obj = AnotherClass.new
# obj.my_instance_method
obj.helper1
AnotherClass.new.helper1
