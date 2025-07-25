def div(a, b) 
  begin
    # result = a / b 
    #1 / 0 # => exception
    # ...
    # ...
    unknown12321 
  rescue ZeroDivisionError => err
    puts "Произошда ошибка класса #{err.class.name}:\n#{err.message}"
    # puts 'zero division!'
    # 0
  rescue => e
    puts "Произошда ошибка класса #{e.class.name}:\n#{e.message}"
    # puts "unknown exception"
    # 888
  else # сюда мы заходим после выполнения блока begin, если там не было ошибок
    puts "Else:"
    puts result * 2
    result
  ensure # в любом случае выполнить этот код
    puts 'ENSURE!'
  end
end

#puts div(10, 2)
puts '=====trying to divide by zero:'
puts div(10, 0).inspect

puts 'hi!'