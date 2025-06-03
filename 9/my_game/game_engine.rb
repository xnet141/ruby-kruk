require_relative 'hero'
require_relative 'dragon'

class GameEngine
  def initialize
    @dragon = Dragon.new
    level = difficulty_level
    @hero = Hero.new level
    @hero_turn = true
  end

  def run
    loop do
      puts "Здоровья героя #{@hero.hit_points}, кол-во восстановлений #{@hero.health_potions}"
      puts "Здоровья дракона #{@dragon.hit_points}"

      do_hero_turn @hero_turn

      do_dragon_turn @hero_turn

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

  private

  def difficulty_level
    puts "выберите уровень сложности (1, 2, 3)"
    loop do
      level_hash = {1 => :easy, 2 => :normal, 3 => :hard}
      level_input= gets.strip.to_i
      level = level_hash[level_input]
      return level if level_input.class == Integer && level_input.between?(1,3)
      puts "неправильный ввод, введите число от 1 до 3"
    end
  end

  def do_hero_turn hero_turn
    if hero_turn
        puts "\nХодит герой!"
        puts "Что делаем? Введите 3 для зелья (#{@hero.health_potions}) или А для атаки:"
        action = gets.strip[0]

        if action == 'З'
          @hero.drink_potion
        else
          dmg = @hero.attack @dragon
          puts "Герой ударил на #{dmg}"
        end
    end
  end

  def do_dragon_turn hero_turn
    if !hero_turn
        puts "\nХодит дракон!"
        dmg = @dragon.attack @hero
        puts "Дракон ударил на #{dmg}"
    end
  end
end
