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