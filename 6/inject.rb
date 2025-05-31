arr = [10, 20, 30, 40, 50, 60]
arr2 = arr
res = arr.each_with_index.inject([]) {|a, (memo, n)|
  if n < arr.length - 1 
    a[n] = memo + arr2[n+1]
    puts "a: #{a}, memo: #{memo}, n: #{n}"
  end
  a
}

puts res.inspect
