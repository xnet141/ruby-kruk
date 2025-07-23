require_relative "one"

module Test
  class Two
    include One #Test::One
    puts "Two"
  end
end