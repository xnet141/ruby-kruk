require_relative 'question_data'
require_relative 'file_writer'

class Engine
  def initialize#(name)
    #@name = name
  end

  def run
    print "введите имя: "
    name = gets.strip.capitalize 
    file_writer = FileWriter.new 'a', name, Time.now.strftime('%Y-%m-%d_%H-%M-%S')
    file_writer.write "Результаты для пользователя #{name}\n\n#{Time.now.strftime('%Y-%m-%d_%H-%M-%S')}\n\n"
    question_data = QuestionData.new
    question_data.collection.each do |question|
      puts question.body
      file_writer.write question.body
      puts question.answers

      print "Ваш ответ: "
      user_input = gets.strip.capitalize
      loop do
        if user_input.between?('A','D')
          break
        else
          puts "введите букву A-D"
        end
      end
      user_answer = question.answers[user_input]
      file_writer.write "  Ответ пользователя: #{user_answer}\n\n"
      if user_answer == question.correct_answer
        puts "Правильно"
        file_writer.write "Правильно\n\n"
      else
        puts "Не правильно - правильный ответ '#{question.correct_answer}'"
        file_writer.write "Не правильно - правильный ответ '#{question.correct_answer}'\n\n"
      end
    end
  end
end

engine = Engine.new

engine.run
