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

countries.shuffle.each_with_index do |country, i|
  puts "Какая столица у #{country}"
  country_index_true = countries.index(country)
  capital_true = capitals[country_index_true]

  capital_h = {}
  capitals.each_with_index do |capital, i|
    capital_h[capital] = (letter + i).chr
  end

  puts capital_h.inspect

  loop do
    print "Выберите букву: "
    user_letter = gets.strip.upcase
    user_capital = capital_h.key(user_letter)
    if  user_capital == capital_true
      puts "--Верно--"
      break
    else
      puts "--НЕ верно--"
    end
  end
end