require_relative 'character'

class Hero < Character
  attr_reader :poison
  STRENGTH = 1..8
  POISON_STRENGTH = 10

  def initialize
    @health = 20
    @poison = 2
  end

  def drink_poison
    return if @poison <= 0
    @health += POISON_STRENGTH 
    @poison -= 1 
  end
end
