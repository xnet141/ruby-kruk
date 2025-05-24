teams = ["ЦСКА", "Зенит", "Динамо", "Спартак"]

teams.each do |t|
  puts t
end

for com in teams
  puts com
end

current_index = 0

for com in teams do
  puts com
  current_index += 1
end

puts current_index

teams.each.with_index do |t, index|
  puts t
  puts index
end

puts "случ команда #{teams[rand(0..teams.length-1)]}"
puts (rand * 4).to_i
puts rand 0..3

puts teams.shuffle[0]
