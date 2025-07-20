p = Proc.new { |a, b|
  result = a + b
  puts "hello from proc!! #{result}"
  result
}

p2 = proc { |str| puts str.upcase }

# final_result = p.call 40, 20
# puts final_result # вернет число 60 как обычный метод

# p2.call("my string!")


def caller(my_proc, my_proc2)
  my_proc.call(33, 44)
  my_proc2.call("hello from caller")
  yield my_proc, my_proc2 # блок yield может быть только один, процедур любое количество
end

caller(p, p2) do |proc1, proc2|
  proc1.call(33, 44)
  proc2.call("hello from caller")
end

