puts "Введите возраст"
age = gets.to_i
puts "Введите страну( 1 => Япония, 2 => США, 3 - остальное )"
country = gets.to_i #gets.strip.downcase
puts country.inspect
country_warn = { 1 => "япония", 2 => "сша" }
puts country_warn.inspect
result = country_warn[country]
puts "result#{result}"
# if age <= 18
#   puts "access block"
# end

if age > 21 || (!result && age > 18)
  puts "welcome"
else 
  puts "block"
end
