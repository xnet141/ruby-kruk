# require

print "Введите имя файла для поиска: "

file_searh = STDIN.gets.strip.downcase

puts file_searh

Dir.glob("/home/**/#{file_searh}*.*") do |file| 
    # puts true 
      puts file
    end

puts "=" * 33
puts "d: #{d.inspect}"

