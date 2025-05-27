require 'yaml'

a_code = 'A'.ord # => 65
correct_answers_count = 0
incorrect_answers_count = 0

puts "введите Ваше имя: "
name = gets.strip

current_time = Time.now.strftime('%Y-%m-%d_%H-%M-%S') # => "2025-05-27_12-25-21"

filename = "QUIZ_#{name}_#{current_time}.txt"

File.write(
  filename,
  "Результаты для пользователя #{name}\n\n#{current_time}",
  mode: 'a' # открыть файл только для записи и дописывать контент в Конец файла
)

all_questions = YAML.safe_load_file('questions.yml', symbolize_names: true) # читаем файл

all_questions.shuffle.each do |question_data|
  formatted_question = "\n\n=== #{question_data[:question]} ===\n\n"
  puts formatted_question

  File.write(
    filename,
    formatted_question,
    mode: 'a' # открыть файл только для записи и дописывать контент в Конец файла
  )

  correct_answer = question_data[:answers].first

  # тот хэш, который мы делаем
  # очередной элемент массива (то есть очередой ответ из массива)
  # индекс этого ответа
  # 'A'.ord => 65
  # 'B'.ord => 66
  # 65.chr => 'A'
  # 66.chr => 'B'

  answers = question_data[:answers].shuffle.each_with_index.inject({}) do |result, (answer, i)| # => Hash
    answer_char = (a_code + i).chr # получаем букву для ответа
    result[answer_char] = answer
    puts "#{answer_char}. #{answer}"
    result # теперь используй новое значение для result - result в конце обязательно
  end

  user_answer_char = nil

  loop  do
    puts "ваш ответ: "
    user_answer_char = gets.strip[0]
    if user_answer_char.between?('A', 'D') # что ответ вообще в диапазоне от A до D
      break
    else
      puts "введите только A-D"
    end
  end

  File.write(
    filename,
    "Ответ пользователя: #{answers[user_answer_char]}\n\n",
    mode: 'a' # открыть файл только для записи и дописывать контент в Конец файла
  )

  if  answers[user_answer_char] == correct_answer
    puts "Верно!"
    correct_answers_count += 1

    File.write(
      filename,
      "Верный ответ!",
      mode: 'a' # открыть файл только для записи и дописывать контент в Конец файла
    )
  else
    puts "не верно, правильный ответ #{correct_answer}"
    incorrect_answers_count += 1

    File.write(
      filename,
      "Неверный ответ! Правильный ответ #{correct_answer}",
      mode: 'a' # открыть файл только для записи и дописывать контент в Конец файла
    )
  end
end

puts "правильных ответов: #{correct_answers_count}, неправильных ответов: #{incorrect_answers_count}"

File.write(
  filename,
  "\n\nправильных ответов: #{correct_answers_count}",
  mode: 'a' # открыть файл только для записи и дописывать контент в Конец файла
)
File.write(
  filename,
  "\n\nнеправильных ответов: #{incorrect_answers_count}",
  mode: 'a' # открыть файл только для записи и дописывать контент в Конец файла
)

correct_answer_percentage = (correct_answers_count/all_questions.length.to_f) * 100

File.write(
  filename,
  "\n\nПроцент правильных ответов: #{correct_answer_percentage.floor(2)}%\n\n",
  mode: 'a' # открыть файл только для записи и дописывать контент в Конец файла
)
