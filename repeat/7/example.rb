class Animal
  def initialize(name, age)
    @name = name
    @age = age
  end

  def age
    puts "Мне #{@age} лет"
  end
end

animal1 = Animal.new 'Kotopes', 22
animal2 = Animal.new 'Pesokot', 10

animal1.age
animal2.age

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

