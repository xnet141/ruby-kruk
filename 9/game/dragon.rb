require_relative 'character'
require_relative 'hero'

class Dragon < Character
  MIN_DMG = 0
  MAX_DMG = 9

  def initialize
    @hit_points = 30
    #@health_potions = 2
  end
end
dragon = Dragon.new
hero = Hero.new
# Character.new.attack(dragon)
hero.attack(dragon)
puts hero.hit_points, dragon.hit_points