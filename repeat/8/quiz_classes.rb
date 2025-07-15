require 'yaml'

a_code = 'A'.ord
correct_answers = 0
incorrect_answers = 0

class FileWriter
  def initialize name, mode
    @name = name
    @mode = mode
    @current_time = Time.now.strftime('%Y-%m-%d_%H-%M-%S') # => "2025-05-27_12-25-21"
    @filename = "QUIZ_#{@name}_#{@current_time}.txt"
  end

  def write text
    File.write(
      @filename,
      text,
      mode: @mode
    )
  end
end

class Questions
  def initialize file
    @file = file
  end

  def load
    YAML.safe_load_file(@file,  symbolize_names: true)
  end
end

puts "Введите ваше имя: "
name = gets.strip

writer = FileWriter.new name, 'a'

questions = Questions.new 'questions.yml'

all_questions = questions.load

writer.write "Результаты для пользователя #{name}\n\n"

all_questions.shuffle.each do |question_data|
  formatted_question = "\n\n=== #{question_data[:question]}=\n\n"
  puts formatted_question

  writer.write formatted_question

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

  writer.write "Ответ пользователя: #{answers[user_answer_char]}\n\n"

  if answers[user_answer_char] == correct_answer
    puts "Верно!!"
    correct_answers += 1

    writer.write "Верный ответ!!"
  else
    puts "Неверно!!"
    puts "Правильно - #{correct_answer}"
    incorrect_answers += 1

    writer.write "НеВерный ответ!!, Правильно: #{correct_answer}"
  end
end

puts "правильных ответов: #{correct_answers}, неправильных ответов: #{incorrect_answers}"

writer.write "\n\nправильных ответов: #{correct_answers}"

writer.write "\n\nнеправильных ответов: #{incorrect_answers}"

correct_answer_percentage = (correct_answers/all_questions.length.to_f) * 100

writer.write "\n\nПроцент правильных ответов: #{correct_answer_percentage.floor(2)}%\n\n"