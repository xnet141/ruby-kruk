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
in [Symbol, Array]
  puts "correct!"
else
  puts "incorrect"
end