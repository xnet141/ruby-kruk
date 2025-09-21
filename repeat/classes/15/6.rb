# ages = [28, 30, 35, 42, 50]
# sherlock_age = 30

# case ages
# in watson_age, ^sherlock_age, *other_ages # ^(оператор пин - каретка или домик) -> закрепляет значение sherlock_age, соответственно, если сопоставление не сработает, то выдаст ошибку
#   puts watson_age
#   puts sherlock_age
# end

# users = [:ok,
#   [
#     {
#       name: "Sherlock",
#       surname: "Holmes",
#       extra: {
#         age: "30",
#         hobby: "violin"
#       }
#     },
#     {
#       name: "John",
#       surname: "Watson",
#       extra: {
#         age: "28",
#         hobby: "writting"
#       }
#     }
#   ]
# ]

# name = "John"

# case users
# in :ok, [*, {name: ^name, extra: {age:}}, *]
#   puts age
# end


users = {
  required_name: "John",
  users: [
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
}

case users
in required_name:, users: [*, {name: ^required_name, extra: {age:}}, *]
  puts "#{required_name}: #{age}"  
end

