class Test
  CONS_TEST = 10

  def test
    puts self.class
    puts Exp::CONST_EXP
  end


end

class Exp < Test
  CONST_EXP = 20
end

Test.new.test
Exp.new.test

puts Test::CONS_TEST
puts Exp::CONS_TEST
