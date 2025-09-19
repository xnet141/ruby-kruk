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

puts users[1].any? {|user| user in {name: /lock/, extra: {age: "30"}}}

# case users 
# in :ok, data
#   puts data
# in [:error, error]
#   puts "Error: #{error}"
# else
#   puts "Unknown data!"
# end

