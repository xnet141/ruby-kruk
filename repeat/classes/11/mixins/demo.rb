require_relative 'inventory'

sword = SimpleRPG::Item.new 'Sting', 10_000, '3rd Feb 2020'

ring = SimpleRPG::Item.new 'The One Ring', 100_000_000, '1th Mar 2020'

armor = SimpleRPG::Item.new 'Mithril Armor', 100_000, '3rd Apr 2020'

# puts sword > ring

# puts sword < ring

# puts armor.between?(sword, ring)

inventory = SimpleRPG::Inventory.new 'Bilbo Baggins', sword, ring, armor

# puts inventory.inspect

# inventory.sort.each do |item| # для метода sort должен быть объявлен <=> 
#   puts item
# end

puts inventory.sort.to_a

puts inventory[0]

puts inventory.first # first берется из Enumerable
