module AnimalModule
  def speak
    puts "#{self.class.name} can't talk realty..."
    super
  end
end

class Animal
  prepend AnimalModule # prepend меняет расположением модуля в цепочке наследования

  def speak
    puts "... said animal"

  end
end

class Cat < Animal
  def speak
    puts "Meow!"
    super
  end
end

cat = Cat.new
cat.speak

puts "ANCESTORS FOR CAT:"
puts Cat.ancestors # ancestors - перевод предки

