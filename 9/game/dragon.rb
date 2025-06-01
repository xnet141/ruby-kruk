require_relative 'character'

class Hero < Character
  MIN_DMG = 0
  MAX_DMG = 9

  def initialize
    @hit_points = 30
    #@health_potions = 2
  end
end

