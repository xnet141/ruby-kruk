module Kernel
  def my_method
    puts "Hello from Kernel!!"
  end
end

module Rust
  module Tost
    def self.testing
      puts 'yes!!'
      my_method
    end

    def not_self
      puts 'not_self!!'
      my_method
    end
  end
end

class Work 
  extend Rust::Tost

end

def test(t, &block) # в случае yield - &block не нужен
  puts t
  block.call t # yield 
end

test 42 do |var|
  puts var ** 2
end

puts '==================='

var = 42

test var do |var|
  puts var ** 2
end

Rust::Tost.testing

puts '==================='

Work.not_self

begin
  Work.testing 
rescue => e # ошибка undefined method 'testing' for class Work
  puts e.class.name
  puts e.message
end

puts '==================='

module Zipper
  attr_accessor :bad

  def ok
    puts 'ok!!'
  end

  class << self
    attr_accessor :extension

    def config
      puts 'config!!!!'
    end
  end

  def self.pool
    puts 'pool!!'
  end
end

class Mupper
  extend Zipper
end

Zipper::extension = 'zippippp'
puts Zipper::extension
# Mupper::extension = 'muppppp'
# puts Mupper::extension
Mupper.ok
# Mupper.new.ok
Mupper.bad = 'very bad'
puts Mupper.bad
puts "=============="

class Animal 
  class << self
    def age 
      puts 42
    end
  end
end

class Cat < Animal
end

Cat.age