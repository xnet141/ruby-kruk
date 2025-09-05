require_relative 'methods.rb'

regexp_string = get_random_regexp_string

puts "Придумайте как можно больше слов, " \
      "содержащих шаблон '#{regexp_string.gsub('.', '*')}'"
puts "Для выхода наберите Х"

count = 0

loop do
  word = STDIN.gets.strip

  if word.downcase == 'х'
    break
  end

  if word_exists?(word)
    if word =~ /#{regexp_string}/
      puts '.. OK =)'
      count += 1
    else
      puts '.. не подходит =('
    end
  else
    puts 'нет такого слова!!'
  end
end

puts "Игра закончена, ваш счет: #{count}"
