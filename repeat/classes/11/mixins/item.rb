require 'date'

module SimpleRPG
  class Item
    include Comparable

    attr_reader :name, :value, :found_at

    def initialize(name, value, found_at)
      @name = name
      @value = value
      @found_at = Date.parse found_at
    end
    # Comparable - это mixin, чтобы он заработал нужно в частности объявить метод <=>
    def <=>(other_item) # <=> - оператор называется spaceship, его нужно объявить через def
      value <=> other_item.value 
    end

    def to_s
      "Name: #{name}\nValue: #{value}\nFound at: #{found_at}"
    end
  end
end

