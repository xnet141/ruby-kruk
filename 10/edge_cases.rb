p = proc {|arg1| puts "hello"}

p.call("test", 1, 2)

l = -> {|arg1| puts "hello from lambda"}
l.call("test", 1, 2)
