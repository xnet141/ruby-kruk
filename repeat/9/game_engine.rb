require_relative "hero.rb"
require_relative "dragon.rb"

class Engine
  def initialize
    @name = 'user_default'
    @hero = Hero.new
    @dragon = Dragon.new
    game @hero, @dragon
  end

  protected

  def game hero, dragon
    puts dragon.health
    puts hero.health
    print "Ваше имя: "
    @name = gets.strip
    hero.attack dragon
    puts dragon.health
    puts hero.health
  end
end
