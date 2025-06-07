require_relative 'question_data'
require_relative 'file_writer'
require_relative 'statistics'
require_relative 'input_reader'

class Engine
  def initialize
    @question_data = QuestionData.new
    @input_reader = InputReader.new

    name = @input_reader.read welcome_msg: "Ваше имя:", # посмотеть этот момент - как хэш (аргумент: значение)
                             validator: ->(val) { !val.empty? },
                             error_msg: "Имя не может быть пустым"

    current_time = Time.now.strftime('%Y-%m-%d_%H-%M-%S')

    @writer = FileWriter.new 'a', name, current_time

    @writer.write("Результаты для пользователя #{name}\n\n#{current_time}")

    @statistics = Statistics.new @writer
  end

  def run
    @question_data.collection.each do |next_question|
      puts next_question # .to_s / puts("put string") в Руби за кулисами сам вызовет метод to_s, который у на написан в классе Question

      @writer.write(next_question) # File.write в Руби за кулисами сам вызовет метод to_s на аргументе, переданным в него, то есть на экземпляре класса Question

      next_question.display_answers

      user_answer = next_question.find_answer_by(ask_for_answer_char)

      @writer.write(
        "Ответ пользователя: #{user_answer}\n\n"
      )

      check user_answer, next_question.correct_answer
    end
    @statistics.print_report
  end

  private

  def check(user_answer, correct_answer)
    if user_answer == correct_answer
      puts "Верно!"
      @statistics.correct
      @writer.write("Верный ответ!")
    else
      puts "Неверно!"
      puts "правильный ответ #{correct_answer}"
      @statistics.incorrect
      @writer.write("Неверный ответ! Правильный ответ #{correct_answer}")
    end
  end

  def ask_for_answer_char
    @input_reader.read welcome_msg: "Ваш ответ:", # посмотеть этот момент - как хэш (аргумент: значение)
                       validator: ->(val) { val.between?('A', 'D') },
                       error_msg: "Ответ от A до D!",
                       process: -> (val) { val[0].to_s }
  end
end
