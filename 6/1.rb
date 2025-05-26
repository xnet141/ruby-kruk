
require 'yaml'

# ['alex', 'petr', 'max'].map {|n| n.upcase}
#  => ["ALEX", "PETR", "MAX"]

# ['alex', 'petr', 'max'].map(&:upcase) # => из функционального программирования короткая запись
#  => ["ALEX", "PETR", "MAX"]

#YAML = yet another markup language


# print "введите ваше имя: "
# name = gets.strip

all_questions = YAML.safe_load_file('questions.yml', symbolize_names: true) # читаем файл

puts all_questions.class # => Hash
puts all_questions.inspect.class # => String
puts all_questions.inspect

all_questions.shuffle.each do |all_question|
  puts all_question[:question]
  puts all_question[:answers]
  n = 1
  loop do
    print "ответ: "
    user_input = gets.strip.to_s.downcase
    if user_input == all_question[:answers][0].to_s.downcase
      puts "молодец!!"
      break
    elsif n < 10
      puts "не правильно, осталось попыток: #{10 - n}"
      n += 1
    else
      puts "попытки закончились!!"
      break
    end
  end
end
