require 'yaml'

a_code = 'A'.ord
correct_answers = 0
incorrect_answers = 0

puts "Введите ваше имя: "
name = gets.strip

current_time = Time.now.strftime('%Y-%m-%d_%H-%M-%S') # => "2025-05-27_12-25-21"

filename = "QUIZ_#{name}_#{current_time}.txt"

File.write(
  filename,
  "Результаты для пользователя #{name}\n\n#{current_time}",
  mode: 'a' # открыть файл только для записи и дописывать контент в Конец файла
)

all_questions = YAML.safe_load_file('questions.yml',  symbolize_names: true)
puts all_questions.inspect

all_questions.shuffle.each do |question_data|
  formatted_question = "\n\n=== #{question_data[:question]}=\n\n"
  puts formatted_question

  File.write(
    filename,
    formatted_question,
    mode: 'a' # открыть файл только для записи и дописывать контент в Конец файла
  )

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
    user_answer_char = gets.strip[0].upcase # strip[0] на случай абракадабры
    if user_answer_char.between?('A', 'D')
      break
    else
      puts "Ответ только A-D"
    end
  end
  
  File.write(
    filename,
    "Ответ пользователя: #{answers[user_answer_char]}\n\n",
    mode: 'a' # открыть файл только для записи и дописывать контент в Конец файла
  )

  if answers[user_answer_char] == correct_answer
    puts "Верно!!"
    correct_answers += 1

    File.write(
      filename,
      "Верный ответ!!",
      mode: 'a' # открыть файл только для записи и дописывать контент в Конец файла
    )
  else
    puts "Неверно!!"
    puts "Правильно - #{correct_answer}"
    incorrect_answers += 1

    File.write(
      filename,
      "НеВерный ответ!!, Правильно: #{correct_answer}",
      mode: 'a' # открыть файл только для записи и дописывать контент в Конец файла
    )
  end
end

puts "правильных ответов: #{correct_answers}, неправильных ответов: #{incorrect_answers}"

File.write(
  filename,
  "\n\nправильных ответов: #{correct_answers}",
  mode: 'a' # открыть файл только для записи и дописывать контент в Конец файла
)
File.write(
  filename,
  "\n\nнеправильных ответов: #{incorrect_answers}",
  mode: 'a' # открыть файл только для записи и дописывать контент в Конец файла
)

correct_answer_percentage = (correct_answers/all_questions.length.to_f) * 100

File.write(
  filename,
  "\n\nПроцент правильных ответов: #{correct_answer_percentage.floor(2)}%\n\n",
  mode: 'a' # открыть файл только для записи и дописывать контент в Конец файла
)
