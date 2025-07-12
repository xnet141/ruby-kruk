random_number = (rand * 2).to_i #(rand 0..2)
puts random_number

n = 1
loop do
  if n > 10
    puts "Аварийный выход"
    break
  end

  print "Угадай число: "
  user_number = gets.to_i

  if user_number == random_number
    puts "good!!"
    break
  elsif user_number > random_number
    puts "меньше"
  else
    puts "больше"
  end
  n = n + 1
end



