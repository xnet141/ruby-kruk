require_relative 'character.rb'

class Hero < Character
  attr_accessor :health
  STRENGTH = 1..10

  def initialize
    @health = 20
    @poison = 3
  end

  def drink_poison

  end
end
