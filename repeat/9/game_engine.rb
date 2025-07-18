require_relative "hero"
require_relative "dragon"
require_relative "set"


class Engine
  def initialize
    @dragon = Dragon.new
    @hero = Hero.new Set.new.config
    @hero_begins = true
    game 
  end

  protected

  def game
    loop do
      print "Ваше имя: "
      @name = gets.strip
      if @name.empty?
        puts 'Вы не ввели имя'
      else 
        break 
      end
    end
    puts @name
    loop do # чтоб не пропускал ход герой
      if @hero_begins
        hero_do
      else
        dragon_do
      end
      @hero_begins = !@hero_begins
    end  
  end

  private

  def hero_do
    loop do
        puts "Введите A для атаки или B для прибавки здоровья"
        user_char = gets.strip.upcase[0]
        user_char if user_char.between?('A','B')
      if user_char == 'A' || @hero.poison <=0
        puts "зелье закончилось, герой атакует" if @hero.poison <=0
        hero_strike = @hero.attack @dragon
        puts "Герой ударил #{hero_strike}"
        puts @dragon.health
        puts "#{@hero.health}, #{@hero.poison}"
        break
      elsif user_char == 'B'
        @hero.drink_poison
        puts @dragon.health
        puts "#{@hero.health}, #{@hero.poison}"
        break
      end
    end

    if @dragon.health <= 0
      puts 'hero win'
      exit
    end
  end

  def dragon_do
    puts "Ход дракона"
    dragon_strike = @dragon.attack @hero
    puts "Дракон ударил #{dragon_strike}"
    puts @dragon.health
    puts @hero.health
    
    if @hero.health <= 0
      puts 'dragon win'
      exit
    end
  end
end
