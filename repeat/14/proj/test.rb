class Client
  def self.self_do
    self
  end
end

s = Client.self_do

puts s

# Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].sort.each {|f| require f}

puts Dir[File.dirname(__FILE__)].inspect


class Error < StandardError
  AlexError = Class.new(self)
  ERRORS = AlexError
end

def inc
  raise Error::ERRORS, "fffffffffffffffff"
end 

def foo
  hh = {test: "test"}
  puts "start"
  inc    
  puts "end"
  puts hh[:test1]
end

# begin
#   foo
# rescue => e
#   puts e.class.name
#   puts e.message 
# end

foo