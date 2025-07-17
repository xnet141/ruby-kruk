require_relative 'character.rb'

class Hero < Character
  attr_accessor :health
  STRENGTH = 1..10

  def initialize
    @health = 20
    @poison = 2
  end

  def drink_poison
    @health += 5
    @poison -+ 1
  end
end
