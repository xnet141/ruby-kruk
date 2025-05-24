
random_number = (rand * 11).to_i

loop do
  puts "число угадай 0 - 10: " + random_number.to_s

  user_number = gets.to_i

  if random_number == user_number
    puts "угадал"
    break
  elsif random_number > user_number
    puts "не угадал, число больше"
  else
    puts "не угадал, число меньше"
  end
end
