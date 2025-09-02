puts (1..1000).map {|i| puts(i) ; i ** 2}.select(&:even?).first(3).inspect

arr = [1, 22, 44]
puts arr.select(&:even?) # вернет массив четных