require_relative "hero"
require_relative "dragon"

class Engine
  def initialize
    @name = 'user_default'
    @hero = Hero.new
    @dragon = Dragon.new
    @hero_begins = true
    game 
  end

  protected

  def game
    print "Ваше имя: "
    @name = gets.strip
    @name if !@name.empty?
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

  def hero_do
    loop do
        puts "Введите A для атаки или B для прибавки здоровья"
        user_char = gets.strip.upcase
        user_char if user_char.between?('A','B')
      if user_char == 'A'
        @hero.attack @dragon
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
    @dragon.attack @hero
    puts @dragon.health
    puts @hero.health
    
    if @hero.health <= 0
      puts 'dragon win'
      exit
    end
  end
end
