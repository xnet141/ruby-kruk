data = {one: 13, two: 14}

case data 
in {one:}
  puts one
  # puts one:
else
  puts "no match"
end

# hh = { name: "Peter", age: "Alex" }

# puts hh[:name]

a = [:test, :fest]

case a
in [:test, :fest]
  puts "es"
else
  puts "no match"
end