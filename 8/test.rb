require 'yaml'

# def test str = "doom"
#   puts str
# end

# test
# test 123


# test = "bla-bla"

# class Demo
#   def initialize(test)
#     @test = test
#   end

#   def say
#     puts @test
#   end
# end

# demo = Demo.new "Uraaaa"
# demo.say


class Questions
  def initialize(filename)
    @filename = filename
  end

  def load
    YAML.safe_load_file(@filename, symbolize_names: true)
  end
end

questions = Questions.new 'questions.yml'

puts questions.load.inspect
