# [1,2,3].each do |el|
#   # block
#   puts el
# end

# new_arr = [1,2,3].map do |el|
#   # block
#   el
# end

# puts el # ошибка - el локальная переменная блока


def demo(*args)
  sum = 0

  args.each do |next_arg|
    result = yield (next_arg)
    sum += next_arg if result
  end

  puts sum
end

demo(101,50,2,3,5,6,7) do |el|
  el.odd? # нечетный?
end

demo(101,50,2,3,5,6,7) do |el|
  el.even? # нечетный?
end

def demo_my(par1, par2)
  sum = yield par1 + par2
  puts sum
end

demo_my(10,11) do |p|
  p/2.to_f
end
