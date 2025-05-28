data = 'very impotant'
# File.write("t.txt", data, mode: 'a')
#f.write(data, )
#f.close
#f.write =

f = File.open('t20.txt', 'w')
#f.write(data)
# puts f.pos
f.write 'one\n'
# puts f.pos
f.write 'two\n'
# puts f.pos
f.write 'three\n'
# puts f.pos
# f.flush
f.rewind
# puts "rewind: #{f.pos}"
f.write 'four\n'
# puts f.pos
f.write '5\n'
# puts f.pos
f.write '6\n'
# puts f.pos
# f.pos = 30

# f.write '7\n'
# puts f.pos
# f.write 'eight\n'
# puts f.pos
# f.write 'nine\n'
# puts f.pos
# f = File.open('t3.txt', 'a')
# f.write 'one'
# f.write 'two'
# f.write 'three'
# f.rewind
# f.rewind
# f.write 'four'
