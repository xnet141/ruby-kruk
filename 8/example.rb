class Animal
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
  def speak
    puts "это общий класс..............."
  end
end

class Dog < Animal
  def speak
    #super
    puts "Woof!"
  end
  def eat(amount)
    if amount > 0.5
      puts "Я столько не съем"
    else
      puts "Вкусно!"
    end
  end
end

class Cat < Animal
  def speak
    puts "Meow!"
  end
  def eat(amount)
    if amount > 0.3
      puts "Я столько не съем"
    else
      puts "Вкусно!"
    end
  end
end

dog = Dog.new "Bars", "10"
dog.speak
dog.eat 1
