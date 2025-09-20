# case {sherlock: 30, watson: 28, lestrade: 40}
# in {sherlock: Integer => sherlock_age}
#   puts sherlock_age
# end

# test = {sherlock: 30, watson: 28}

# case test 
# in sherlock: 
#   puts sherlock
# end

case {sherlock: 30, watson: 28}
in {sherlock:, **nil}
  puts sherlock_age
in {sherlock:, watson:, **nil}
  puts sherlock
  puts watson
end
