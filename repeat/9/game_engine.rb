require_relative "hero"
require_relative "dragon"

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
    name = gets.strip
    @name = name if !name.empty?
    puts @name
    puts @name.class
    loop do
      if @hero_begins
        loop do
          puts "Введите A для атаки или B для прибавки здоровья"
          user_char = gets.strip.upcase
          user_char if user_char.between?('A','B')
          if user_char == 'A'
            hero.attack dragon
            puts dragon.health
            puts "#{hero.health}, #{hero.poison}"
            break
          elsif user_char == 'B'
            hero.drink_poison
            puts dragon.health
            puts "#{hero.health}, #{hero.poison}"
            break
          end
        end
      else
        puts "Ход дракона"
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

      @hero_begins = !@hero_begins
    end
  end
end
