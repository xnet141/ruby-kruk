ts = (1..5).map do |i|
  Thread.new do
    Thread.current[:name] = "thread #{i}"
    sleep(1)
    puts "done #{i}"
    rand 100 # тоже самое, что и 0..100
  end
end

puts 'starting...'

results = ts.map(&:value)
puts 'done with thread'

ts.each {|t| puts t[:name]}

puts results.inspect


