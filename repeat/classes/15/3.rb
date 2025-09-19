ages = [28, 30, 35, 42, 50]

# case ages
# in [Integer, Integer, *]
#   puts "correct!"
# else
#   puts "incorrect"
# end

case {sherlock: 30, watson: 28, lestrade: 40}
in {sherlock: test_30, watson:, **} # ** две звезды для хеша, либо можно вообще убрать **, оставить {sherlock: test_30, watson:}
  puts test_30
  puts watson
else
  puts "incorrect"
end