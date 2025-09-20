ages = [28, 30, 35, 42, 50]
sherlock_age = 30

case ages
in watson_age, ^sherlock_age, *other_ages # ^(оператор пин - каретка или домик) -> закрепляет значение sherlock_age, соответственно, если сопоставление не сработает, то выдаст ошибку
  puts watson_age
  puts sherlock_age
end

