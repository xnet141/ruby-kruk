# class Roman
#   def self.test var
#     puts "#{var}"
#   end
# end

# Roman.send :test, "13"

class Alex
  attr_accessor :name

  def initialize name
    # self.instance_variable_set(:@name, name)
    @name = name
  end

  class << self
    def new_instance name
      new name
    end
  end
end

alex = Alex.new_instance "hero"
puts alex.inspect
puts alex.name
