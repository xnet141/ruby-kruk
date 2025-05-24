countries = [
  'РФ',
  'Китай',
  'Франция',
  'Норвегия',
  'Камбоджа'
]

capitals = [
  'Москва',
  'Пекин',
  'Париж',
  'Осло',
  'Пномпень'
]

hh = {}

countries.each.with_index do |n, i|
  hh[countries[i]] = capitals[i]
end

puts hh.inspect

new_hh = countries.zip(capitals).to_h ##### ----Супер способ комбинтрования массивов!!----

puts new_hh.inspect