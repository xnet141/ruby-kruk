# для подключения файла в irb можно набрать "irb -r ./filename.rb" # запустится консоль с подключенным файлом

# имена классов - это константы

TEST = "main namespace"

class Test

end

module MySuperLib
  class Animal < Test
    TEST = "my constant"
    attr_accessor :name

    def initialize(name)
      @name = name
    end

    def Animal.class_method

    end

    def hello
      puts ::TEST # :: => двоеточия нужны для обращения к константе вне модуля
      puts TEST
    end
  end
end

obj = MySuperLib::Animal.new "test"
obj.hello

puts "========1"

p MySuperLib::Animal::TEST

puts "=======2"

klass = MySuperLib::Animal
p klass::TEST

puts "=======3"

klass_new = klass.new "super test"
klass_new.hello