require_relative 'character'

class Hero < Character
  attr_reader :health_potions

  MIN_DMG = 2
  MAX_DMG = 10
  POTION_STRENGTH = 4

  def initialize level
    level_hash = {
      easy: [20, 2],
      normal: [15, 2],
      hard: [12, 1]
    }
    @hit_points = level_hash[level][0]
    @health_potions = level_hash[level][1]
  end

  def difficulty_level(level)

  end

  def drink_potion
    if @health_potions > 0
      @hit_points += POTION_STRENGTH
      @health_potions -= 1
    end
  end
end
