my_l = lambda { |str| puts str }
my_l.call "test"

my_l2 = -> { puts "thin arrow"}
my_l2.call