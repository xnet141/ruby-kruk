class Animal
  LEGS_COUNT = 4
  @@init = 0
  # attr_reader :name
    #attr_accessor :age, :sex # атрибут экземпляра класса
  def initialize(name, age)
    @name = name
    @age = age
    @@init += 1
  end

  def age
    #puts "Мне #{@age} лет"
    return @age
    # любые строки после return не выполняются
  end

  def age=(new_age) # age= позволяет присваивать,то есть другой синтаксис испльзовать
    @age = new_age
  end

  def init
    @@init
  end

  # def test
  #   LEGS_COUNT + @@legs
  # end
end


animal1 = Animal.new("Kotopes", 3)
animal2 = Animal.new("Pesokot", 4)
animal3 = Animal.new("alien", 100)
animal4 = Animal.new("alien", 100)

puts animal3.init
puts animal1.inspect
puts animal2.inspect
puts animal2.init

puts "================"
puts animal1.age = 10
puts animal1.age
puts animal3.age = 20
puts animal3.age

puts animal1.init
puts "================"

animal1_age = animal1.age
puts "возраст животного номер 1: #{animal1_age}"

#monkey-patching
class String
  # переоткрываем уже существующий класс
  # и его меняем
  def downcase
    puts 'lol'
  end
end

s = "new string"
s.downcase
puts s.upcase
