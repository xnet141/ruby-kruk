class Animal
    attr_accessor :age
    attr_reader :name # метод только для чтения
    attr_writer :name # метод для изменения
  def initialize(name, age)
    @name = name
    @age = age
  end
end


animal1 = Animal.new("Kotopes", 3)
animal2 = Animal.new("Pesokot", 10)

puts animal1.age
animal2.age = "NEW Pesokot"
puts animal2.age
