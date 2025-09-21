class Person
  attr_accessor :name, :surname # аналог методов вручную созданных def name и name=

  def initialize name, surname
    @name = name
    @surname = surname
  end

  def hh
    {name: name, surname: surname}
  end

  def arr
    [name, surname]
  end
end

p = Person.new "Alex", "Bob"

puts p

puts p.hh

puts p.arr