#для подключения файла в irb можно набрать "irb -r ./filename.rb" # запустится консоль с подключенным файлом

TEST = "main namespace"

module MySuperLib
  class Animal
    TEST = "my constant"
    attr_accessor :name

    def initialize(name)
      @name = name
    end

    def Animal.class_method

    end

    def hello
      puts ::TEST # :: => двоеточия нужны для обращения к константе вне модуля
    end
  end
end

obj = MySuperLib::Animal.new "test"
obj.hello