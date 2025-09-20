# ages = [28, 30, 35, 42, 50]

# case ages
# in [Integer => age1, Integer => age2, *]
#   puts age1, age2
# end

users = [:ok,
  [
    {
      name: "Sherlock",
      surname: "Holmes",
      extra: {
        age: "30",
        hobby: "violin"
      }
    },
    {
      name: "John",
      surname: "Watson",
      extra: {
        age: "28",
        hobby: "writting"
      }
    }
  ]
]

case users 
in :ok, [{extra: {age: sherlock_age}}, *]
  puts sherlock_age
in :error, error
  puts "Error: #{error}"
else
  puts "No match"
end