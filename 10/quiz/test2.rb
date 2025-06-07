class InputReader
  def read(welcome_msg: nil)
    puts 14 unless welcome_msg.nil?
    # puts welcome_msg.class
    puts 42 if welcome_msg
    input = gets
    puts input.inspect
    #value = gets.strip
    #value
  end
end

test = InputReader.new
f = test.read #welcome_msg: "Ваше имя:"

puts f.inspect
