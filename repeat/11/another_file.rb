require_relative 'my_lib'

class AnotherParent
  extend MyLib # extend добавляет методы модуля как методы класса
  include MyLib # include добавляет методы модуля как методы образца класса
end

AnotherParent.helper1

obj = AnotherParent.new
obj.helper2

# class AnotherClass < AnotherParent
#   include MyLib # include добавляет методы модуля как методы образца класса

#   def my_instance_method
#     puts "Hi from AnotherClass"

#     helper2
#     helper1
#   end
# end

# obj = AnotherClass.new
# obj.my_instance_method