random_number = (rand * 2).to_i #(rand 0..2)
puts random_number

loop do
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
end



