print "нажмите 1, если ваша страна Япония или США, нажмите 2 в остальных случаях: "

user_input = gets.to_i

#country = gets.strip

puts "введите возраст "

age = gets.to_f

if ( age >= 21 ) || ( user_input != 1 && age >= 18 )
  puts "доступ открыт" 
else
  puts "доступ закрыт"
end