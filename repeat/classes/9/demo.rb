class Animal
  public

  attr_reader :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end
end

class Cat < Animal
  def introduce
    puts "I am #{self.name} and I'm #{self.age}" # self можно не указывать, self значит получателя метода(othercat), относительно которго будет вызван
  end                                            # name будет вызван относительно получателя по-умолчанию
end

cat = Cat.new 'Spot', 1
other_cat = Cat.new 'Mr. Buttons', 5

puts cat.name, cat.age
other_cat.introduce

puts "Cat's public methods:"
puts cat.public_methods
puts '=' * 30
puts cat.public_methods.grep /name/
