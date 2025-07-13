require 'yaml'

a_code = 'A'.ord
correct_answer = 0
incorrect_answer = 0

puts "Введите ваше имя: "
name = gets.strip

current_time = Time.now.strftime('%Y-%m-%d_%H-%M-%S') # => "2025-05-27_12-25-21"

filename = "QUIZ_#{name}_#{current_time}.txt"

all_questions = YAML.safe_load_file('questions.yml',  symbolize_names: true)
puts all_questions.inspect

all_questions.shuffle.each do |question_data|
  puts "\n\n=== #{question_data[:question]}=\n\n"

  correct_answer = question_data[:answers].first

  answers = question_data[:answers].shuffle.each_with_index.inject({}) do |result, (answer, i)|
    answer_char = (a_code + i).chr
    result[answer_char] = answer

    puts "#{answer_char}. #{answer}"

    result
  end

  user_answer_char = nil
  loop do
    puts 'Ваш ответ:'
    user_answer_char = gets.strip[0] # strip[0] на случай абракадабры
    if user_answer_char.between?('A', 'D')
      break
    else
      puts "Ответ только A-D"
    end
  end

  if answers[user_answer_char] == correct_answer
    puts "Верно!!"
  else
    puts "Неверно!!"
    puts "Правильно - #{correct_answer}"
  end
end