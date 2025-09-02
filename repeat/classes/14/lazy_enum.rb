puts (1..1000).lazy.map {|i| puts(i) ; i ** 2}.
  select(&:even?).take(100).select{|i| (i % 3).zero?}.force.inspect

puts "=" * 30

# arr = [*1..100]
# puts arr.lazy.select(&:even?).first(3) # вернет массив четных
# # puts arr.inspect

# puts "=" * 30

def calc
  (1..1000).lazy.map {|i| puts(i) ; i ** 2}.
  select(&:even?).take(100).eager
end

puts calc.select {|i| (i % 3).zero?}.inspect