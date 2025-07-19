def demo(par1, par2)
  puts par1, par2
  if block_given? # если блок был передан
    yield 'yieee', 'y22222'
    yield par1, par2
  end
end

demo(100, 50) do |arg1, arg2| # Круто!!
  puts arg1, arg2
end

puts "================================"


def demo(*args)
  puts args, args.class
  if block_given? # если блок был передан
    args.each do |next_arg|
      yield next_arg 
    end
  end
end

demo(100, 50) do |el| # Круто!!
  puts el * 3
end


puts "================================"


def demo(*args)
  sum = 0
  
  args.each do |next_arg|
    result = yield next_arg
    sum = sum + next_arg if result
  end

  puts sum
end

demo(101, 50, 2, 3, 5, 6, 7) do |el| # Круто!!
  el.odd?
end

demo(101, 50, 2, 3, 5, 6, 7) do |el| # Круто!!
  el.even?
end