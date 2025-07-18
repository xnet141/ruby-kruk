class Set
  def initialize

  end

  def config
    user_char_right = false
    user_input = ''
    while !user_char_right do # while наверно тут не нужен 
      puts "Введите A для среднего уровня сложности или B для сложного"
      user_input = gets.strip.upcase[0]
      @test = 'test'
      user_char_right = user_input.between?('A', 'B')
    end  
    h = {'A' => [20, 2], 'B' => [30, 3]}
    puts @test
    h[user_input]
  end
end

# Set.new.config

