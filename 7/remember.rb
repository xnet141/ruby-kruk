class Animal
  attr_reader :name
  attr_accessor :age, :sex
  def initialize(name, age, sex)
    @name = name
    @age = age
    @sex = sex
    puts name
  end
end

animal = Animal.new("Koshka", 28, "male")

puts animal.name

puts animal.age = 28
puts animal.sex = "male"
