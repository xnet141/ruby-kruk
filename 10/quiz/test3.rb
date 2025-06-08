class InputReader
  def read(validator: nil)
    puts "Введите имя: "
    value = gets.strip
    puts "===Bla-bla!!!!===" if validator.nil? || validator.call(value)
    puts validator.call(value)
    read(validator: validator)
  end
end

test = InputReader.new
f = test.read validator: -> (val) { !val.empty? }
# puts f.inspect
# puts f
