require_relative 'string'

module ExternalLib
  class Main
    def initialize(str)
      @str = str
    end

    def do_work
      puts "ExternalLib doing work..."
      @str.snakecase
    end
  end
end