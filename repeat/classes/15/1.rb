data = {
  name: "Sherlock",
  surname: "Holmes",
  extra: {
    age: "30",
    hobby: "violin"
  }
}

case data 
in {name: sherlock_name, extra: {age: sherlock_age}}
  puts sherlock_name
  puts sherlock_age
in extra: {university:}
  puts university
else
  puts "No match"
end

data => {extra: {age: sherlock_age}} # распаковка ключа age в переменную sherlock_age -> новая фича в Руби
puts sherlock_age

