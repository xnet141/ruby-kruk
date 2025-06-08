class InputReader
  def read(welcome_msg: nil, validator: nil, error_msg: nil, process: nil)
    puts welcome_msg unless welcome_msg.nil? # выводим welcome_msg, если welcome_msg не отсутствует

    value = gets.strip
    value = process.call(value) if process

    return value if validator.nil? || validator.call(value) # возвращаем validator, если валидатора нет или проверка валидатором возвращает true, то есть ввод осуществлен

    puts error_msg unless error_msg.nil?

    read(welcome_msg: welcome_msg, validator: validator, error_msg: error_msg)
  end
end
