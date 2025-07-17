require_relative "hero.rb"
require_relative "dragon.rb"

class Engine
  def initialize
    @name = 'user_default'
    @hero = Hero.new
    @dragon = Dragon.new
    @hero_begins = true
    game @hero, @dragon
  end

  protected

  def game hero, dragon
    print "Ваше имя: "
    @name = gets.strip if !gets.strip.empty?
    puts @name
    loop do
      if @hero_begins
        puts dragon.health
        puts hero.health
        hero.attack dragon
        hero.drink_poison
      else
        dragon.attack hero
        puts dragon.health
        puts hero.health
      end

      if dragon.health <= 0
        return puts 'hero win'
      end

      if hero.health <= 0
        return puts 'dragon win'
      end
    end
    
    @hero_begins = !@hero_begins
  end
end
