# require_relative "one"
# require_relative "two"
# require_relative "three"

# one = Test::One
# two = Test::Two.new
# three = Test::Three.new

class Error
  attr_accessor :ce
  def initialize
  end
  
  def init
    @ce = self.class.new
  end

  def foo
    42
  end

  class Mod < Error
    puts "99"
  end

  ModNew = Class.new Mod
end

err = Error.new
puts err.class.name
puts Error.class.name

# puts err.init
# puts err.ce


Trest = Class.new Error # создается класс в константе. Это не экземпляр

puts Trest.superclass
puts Trest.instance_methods.include? :foo
puts Trest.instance_methods.include? :class.name
puts Trest.methods.include? :new 
puts Trest.methods.include? :class.name

TrestInst = Trest.new #создается экземпляр класса
puts TrestInst.foo
puts TrestInst.init
puts TrestInst.class

 em = Error::Mod.new
 puts em

puts Error::ModNew
puts Error::Mod

puts Error::ModNew.class.name
puts Error::Mod.class.name

class Oshib < Error

end

oshib = Oshib.new
puts Oshib.name
puts oshib.class.name

puts Oshib.superclass
puts oshib.superclass # ошибка



