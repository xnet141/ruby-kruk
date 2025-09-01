ts = (1..5).map do |i|
  Thread.new { sleep(1) ; puts "done #{i}" }
end

puts 'starting...'
Thread.list.each {|t| puts t.inspect}
ts.each(&:join)
puts 'done with thread'

ts.each {|t| puts t.inspect}

ts.each(&:join)
