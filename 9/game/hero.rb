require_relative 'character'

class Hero < Character
  MIN_DMG = 1
  MAX_DMG = 7

  def initialize
    @hit_points = 20
    @health_potions = 2
  end
end