# class Ttt
#   def test
#     puts "in test"
#     return 42
#   end

#   def test_proc l
#     puts "1"
#     l.call
#     puts "2"
#   end
# end

# class Bbb
#   def bbb
#     puts "test bbb"
#   end  
# end


# puts "all right"

# l = proc { puts "test proc"; return 32 }
# puts "test11111111"

# pr = Ttt.new.test_proc l

# puts "test11111111"

# t = Ttt.new.test
# puts t

# puts t

# puts pr

# bbb = Bbb.new.bbb



# def proc_return
#   Proc.new {return "Bla-bla"}.call
#   return "proc_return method finished"
# end

# puts proc_return


module GemTest
  class Specification
    attr_reader :trust

    def initialize 
      @trust = Trust.new
      yield @trust if block_given?  
    end

    # def trust
    #   @trust
    # end
  end

  class Trust
    attr_accessor :version, :name, :plat

    def initialize 
      @version = 1.0
      @name = 'one'
      @plat= '2.0'      
    end
  end
end


g = GemTest::Specification.new {|spec| 
  spec.version = 10
  spec.name = 'test'
  spec.plat = 'linux'
}
puts g
puts g.trust.version
puts g.trust.name
puts g.trust.plat






# spec = GemTest::Specification.new
# puts spec.trust.version
# puts spec.trust.name
# puts spec.trust.plat


