require 'json'

# def foo
#   def foo2
#     4
#   end
# end
#
# f = foo
# ff = foo.foo2
#
# puts f.foo2
# puts ff

# var = JSON.parse('{"\test": "dsada", "test2": "frfr"}')

# puts var

module Test
  def self.bro
    puts "bro"
  end
end

t = Test.bro


class Apple
  attr_reader :name

  def initialize name
    @name = name 
  end

  def amount
    2 + 2
  end
end

class Init
  def self.apple
    @apple = Apple.new "SuperApple"
  end

  def apple
    @apple.amount
  end
end


class Tressst
  attr_reader :var

  
  def self.labuda
    Tressst.new    
  end

  # private

  def sum11
    'gdfgdfg'  
  end 
end


# puts apple = Init.apple
# puts apple.amount
# puts Init.apple.amount

# t = Tressst.init "Bkakakaka"
# puts t.inspect

xxx = Tressst.labuda
# puts xxx.sum11

ccc = Tressst
puts ccc.class

puts xxx.respond_to?(:sum11)

puts "================================"

class Client
  def initialize
    @test = 'test'
  end

  def self_do
    self
  end
end

obj = Client.new

puts obj.self_do.inspect