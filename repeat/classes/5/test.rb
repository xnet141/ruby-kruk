class Roman < Hash
  def test key, value
    self[key] = value
  end

  def self
    self
  end
end

roman = Roman.new

puts roman.test "name", "lastname"
puts roman.self
puts roman.class

puts "====================================="

class Test

end

puts Test.class.superclass # Module

test = Test.new

puts test.class # Test
puts test.class.class # Class
puts test.class.class.superclass # Module
puts test.class.superclass # Object
puts test.class.superclass.superclass # BasicObject