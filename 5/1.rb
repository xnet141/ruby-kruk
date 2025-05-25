data = [
  {:name => 'Andrew', :surname => 'Watson'},
  {:name => 'Alex', :surname => 'Dan'},
  {:name => 'Pavel', :surname => 'Pushkin'},
]

tweets = data.map { |n|
  n[:name]
}

# data.map! { |n|
#   n[:name]
# }
#data.map do |n| puts n; puts 'test' end

puts tweets
