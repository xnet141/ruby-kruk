require_relative 'utils'

module ExternalLib
  class Main
    using ExternalLib::Utils # активируем refinement в данной области видимости

    def initialize(str)
      @str = str
    end

    def do_work
      puts "ExternalLib doing work..."
      @str.snakecase
    end
  end
end