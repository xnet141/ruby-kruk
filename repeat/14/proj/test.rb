class Client
  def self.self_do
    self
  end
end

s = Client.self_do

puts s

# Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].sort.each {|f| require f}

puts Dir[File.dirname(__FILE__)].inspect