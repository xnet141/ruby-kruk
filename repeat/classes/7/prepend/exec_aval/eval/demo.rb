class Animal
  def initialize(name)
    @name = name
  end

  def get_binding
    binding
  end
end

animal = Animal.new "Spot"
binding = animal.get_binding

puts "Enter your code ..."
code = gets

eval code, binding