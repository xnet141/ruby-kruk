require_relative 'character.rb'

class Dragon < Character
  attr_accessor :health
  STRENGTH = 1..10

  def initialize
    @health = 20
    @poison = 3
  end
end

puts Dragon.new.strike
