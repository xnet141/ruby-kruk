data = {
  'РФ' => 'Москва',
  'Китай' => 'Пекин',
  'Франция' => 'Париж',
  'Норвегия' => 'Осло',
  'Камбоджа' => 'Пномпень'
}


while data.length > 0
  key = data.keys.sample
  value = data[key]
  puts "Страна #{key}"
  n = 0
  while n < 10 do 
    puts n
    print "введи столицу: "
    user_input = gets.strip.downcase
    if user_input == value.downcase 
      puts "Молодец" 
      data.delete (key)
      break    
    else
      puts "----еще попытка"
    end
  n +=1  
  end
end

puts data.inspect

#puts data.keys.sample