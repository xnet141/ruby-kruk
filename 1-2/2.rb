puts "введите страну "

country = gets.strip

puts "введите возраст "

age = gets.to_f

if ( country == "Япония" || country == "США" && age < 21 ) || ( country != "Япония" || country == "США" ) && age < 18
  puts "доступ закрыт" 
else
  puts "доступ открыт"
end
