countries = [
"Франция",
"Германия",
"Россия"
]

capitals = [
  "Париж",
  "Берлин",
  "Москва"
]

letter = 'A'.ord

rand_cap_i = rand 0..capitals.length - 1
rand_cap = capitals[rand_cap_i]
country_cap = countries[rand_cap_i]
#countries.shuffle 

countries = countries.shuffle

countries.each_with_index do |country, i|
  puts "Страна #{country}"
end

puts "Какая столица у #{country_cap}"

capital_h = {}
capitals.each_with_index do |capital, i|
  #puts " #{capital}"
  capital_h[capital] = (letter + i).chr
end

puts capital_h.inspect

print "Выберите букву: "
user_capital = gets.strip.upcase

if capital_h.key(user_capital) == rand_cap
  puts "верно"
else
  puts "НЕ верно"
end