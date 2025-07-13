arr = [1,"a",Object.new,:hi]

h = arr.inject({}) do |hash, item|
  hash[item.to_s] = item
  hash
end

puts h.inspect