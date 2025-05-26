require 'yaml'

all_questions = YAML.safe_load_file('questions.yml', symbolize_names: true) # читаем файл

puts all_questions.inspect

all_questions.shuffle.each.with_index do |question_data|
  puts "\n\n=== #{question_data[:question]} ===\n\n"

  correct_answer = question_data[:answers].first

  # тот хэш, который мы делаем
  # очередной элемент массива (то есть очередой ответ из массива)
  # индкс этого ответа
  answers = question_data[:answers].shuffle.each_with_index.inject({}) do |result, (answer, i)|

  end

end
