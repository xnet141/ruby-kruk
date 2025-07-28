def div(a, b)
  retries = 1
  max_retries = 3
  
  begin
     result = a / b 
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
    if retries < max_retries
      retries += 1
      # sleep 2**retries
      retry # выполнить блок begin еще раз
    else
      raise e.class, "попробовали вызвать 3 раза этот код, но не вышло... "#=> породить исключение
    end
    
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
begin
  puts div(10, 0)
rescue => e
  puts e.class.name
  puts e.message
end

puts 'Hi!!!!'