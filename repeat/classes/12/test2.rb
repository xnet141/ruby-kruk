class Person
  def test
    puts "testing"

  end
end

arr = (1..5).map { Person.new }
arr.each(&:test)

puts arr.inspect