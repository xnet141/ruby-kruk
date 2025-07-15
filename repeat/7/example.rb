class Animal
  attr_accessor :age
  attr_reader :name
  attr_writer :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def age
    puts "Мне #{@age} лет"
  end

  # def name
  #   @name
  # end

  # def name=(new_name)
  #   @name = new_name
  # end
end

animal1 = Animal.new 'Kotopes', 22
animal2 = Animal.new 'Pesokot', 10

animal1.age
animal2.age

animal1.age = 55
puts animal1.age


#monkey-patching
class String 
  # переоткрываем уже существующий класс
  # и его меняем
  def downcase
    puts "Bla"
  end
end

"test".downcase
"test".downcase
puts "test".upcase



