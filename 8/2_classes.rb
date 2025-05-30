require 'yaml'

class FileWriter
  def initialize(name, mode)
    @filename = "QUIZ_#{name}_#{Time.now.strftime('%Y-%m-%d_%H-%M-%S')}.txt"
    @mode = mode
  end

  def write(content)
    File.write(
      @filename,
      content,
      mode: @mode
    )
  end
end

class Questions
  def initialize(filename)
    @filename = filename
  end

  def load
    YAML.safe_load_file(@filename, symbolize_names: true)
  end
end


a_code = 'A'.ord # => 65
correct_answers_count = 0
incorrect_answers_count = 0

puts "введите Ваше имя: "
name = gets.strip

writer = FileWriter.new(name, 'a')
writer.write("Результаты для пользователя #{name}\n\n#{Time.now.strftime('%Y-%m-%d_%H-%M-%S')}")

questions = Questions.new("questions.yml")

questions.load.shuffle.each do |question_data|
  formatted_question = "\n\n=== #{question_data[:question]} ===\n\n"
  puts formatted_question

  writer.write(formatted_question)

  correct_answer = question_data[:answers].first

  answers = question_data[:answers].shuffle.each_with_index.inject({}) do |result, (answer, i)| # => Hash
    answer_char = (a_code + i).chr
    result[answer_char] = answer
    puts "#{answer_char}. #{answer}"
    result
  end

  user_answer_char = nil

  loop  do
    puts "ваш ответ: "
    user_answer_char = gets.strip[0]
    if user_answer_char.between?('A', 'D')
      break
    else
      puts "введите только A-D"
    end
  end

  writer.write("Ответ пользователя: #{answers[user_answer_char]}\n\n")

  if  answers[user_answer_char] == correct_answer
    puts "Верно!"
    correct_answers_count += 1

    writer.write("Верный ответ!\n\n")
  else
    puts "не верно, правильный ответ #{correct_answer}"
    incorrect_answers_count += 1

    writer.write("Неверный ответ! Правильный ответ #{correct_answer}")
  end
end

puts "правильных ответов: #{correct_answers_count}, неправильных ответов: #{incorrect_answers_count}"

writer.write("\n\nправильных ответов: #{correct_answers_count}")

writer.write("\n\nнеправильных ответов: #{incorrect_answers_count}")

correct_answer_percentage = (correct_answers_count/questions.load.length.to_f) * 100

writer.write("\n\nПроцент правильных ответов: #{correct_answer_percentage.floor(2)}%\n\n")
