class Client
  def self.self_do
    self
  end
end

s = Client.self_do

puts s