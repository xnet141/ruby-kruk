File.open('alice.txt') do |f|
  puts f.each_line.with_index.lazy.
    select {|line, i| puts (i) if (i % 100).zero? ; line.match(/Lorem/i)}.
    first(3)
end