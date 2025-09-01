ts = (1..5).map do |i|
  Thread.new do
    sleep(1)
    puts "done #{i}"
    raise("error") if i == 3
    rand 100 # тоже самое, что и 0..100
  end
end

puts 'starting...'

# begin
  results = ts.map(&:value)
# rescue => e
#   puts 'EXCEPTION'
#   puts e.inspect
# end

puts 'done with thread'

puts results.inspect


