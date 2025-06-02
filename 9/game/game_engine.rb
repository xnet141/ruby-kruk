require_relative 'hero'
require_relative 'dragon'

class GameEngine
  def initialize
    @hero = Hero.new
    @dragon = Dragon.new
    @hero_turn = true
  end

  def run
    loop do
      puts "Здоровья героя #{@hero.hit_points}"
      puts "Здоровья дракона #{@dragon.hit_points}"

      if @hero_turn
        puts "\nХодит герой!"
        puts "Что делаем? Введите 3 для зелья (#{@hero.health_potions}) или А для атаки:"
        action = gets.strip[0]

        if action == 'З'
          @hero.drink_potion
        else
          dmg = @hero.attack @dragon
          puts "Герой ударил на #{dmg}"
        end
      else
        puts "\nХодит дракон!"
        dmg = @dragon.attack @hero
        puts "Дракон ударил на #{dmg}"
      end

      if @hero.hit_points <= 0
        puts "Дракон победил"
        break
      end

      if @dragon.hit_points <= 0
        puts "Герой победил"
        break
      end

      @hero_turn = !@hero_turn
    end
  end
end
