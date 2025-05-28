arr = [10, 20, 30, 40, 50, 60]

res = arr.inject(){ | memo, n|
memo + n
}

puts res.inspect
