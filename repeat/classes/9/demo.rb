require 'active_support/inflector/transliterate'
require 'cgi'
require 'digest'

class Animal
  include ActiveSupport::Inflector

  # public

  attr_reader :age

  def initialize(name, age)
    @name = name
    @age = age
    @secret = Digest::MD5.hexdigest name + " " + age.to_s
  end

  def name
    @name
  end


  def to_h
    {
      name: self.name, # self можно не указывать
      age: age,
      arr: [name, age]
    }
  end

  protected

  def to_param
    parameterize name
  end

  
  private 
  
  def maximum_foody
    self.age > 2 ? 350 : 250
  end

  attr_reader :secret
end

class Cat < Animal
  def introduce
    puts "I am #{self.name} and I'm #{self.age}" # self можно не указывать, self значит получателя метода(othercat), относительно которго будет вызван
  end                                            # name будет вызван относительно получателя по-умолчанию
  
  def say_maximum_foody
    puts "I can eat #{self.maximum_foody}g"
  end

  def can_eat_more?(other_cat)
    self.maximum_foody > other_cat.maximum_foody # для other_cat private работать не будет, только на self(cat)
  end                                            # то есть для другого объекта private метод не вызвать, но можно вызвать protected

  def url_for 
    "http://example.com/cats/#{self.to_param}"
  end

  def search_url_for(other_cat)
    params = CGI.escape "#{self.to_param},#{other_cat.to_param}"
    "http://example.com/cats?q=#{params}"
  end

  def reveal_secret
    secret
  end
end

cat = Cat.new 'Spot', 1
other_cat = Cat.new 'Mr. Buttons', 5

# puts cat.name, cat.age
# other_cat.introduce

# puts "Cat's public methods:"
# puts cat.public_methods
# puts '=' * 30
# puts cat.public_methods.grep /name/


# puts cat.say_maximum_foody
# puts "Cat's private methods:"
# puts cat.private_methods

# puts cat.to_h

# puts cat.can_eat_more?(other_cat)

# puts cat.url_for
# puts cat.search_url_for(other_cat)
puts cat.reveal_secret


puts cat.protected_methods
puts cat.methods # protecred, public
puts cat.methods.grep /maximum/ 

puts cat.send(:secret) # для вызова private метода можно использовать send, но лучше так не делать!!
