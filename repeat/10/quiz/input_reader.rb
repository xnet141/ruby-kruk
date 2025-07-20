class InputReader
  def read(welcome_msg: nil, validator: nil, error_msg: nil, process: nil, test: nil)
    puts welcome_msg unless welcome_msg.nil?

    value = gets.strip
    value = process.call(value) if process

    return value if validator.nil? || validator.call(value)
    
    puts error_msg unless error_msg.nil?
  
    read(welcome_msg: welcome_msg, validator: validator, error_msg: error_msg)
  end
end

#  value = InputReader.new.read welcome_msg: "Ваш ответ: ",
#                                           validator: -> (val) {val.strip[0].upcase.between?('A', 'D')},
#                                           error_msg: "Ответ от A до D!"
# puts value
