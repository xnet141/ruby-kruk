class Person
  attr_accessor :name, :surname, :age

  def initialize(name, surname, age)
    @name = name
    @surname = surname
    @age = age
  end

  def deconstruct
    puts "Deconstructing #{name}"
    [:ok, name, surname, age]
  end

  def deconstruct_keys(keys)
    puts "Deconstruct with #{keys}"
    return {name: name, surname: surname, age: age} if keys.nil?

    hash = keys.inject({}) do |result, key|
      result[key] = self.send key
      result
    end

    puts hash.inspect

    hash
  end
end

person1 = Person.new "Sherlock", "Holmes", 30
# puts person1 

# case person1
# in [:ok, String => sher_name, sher_surname]
#   puts sher_name
#   puts sher_surname
# end

person2 = Person.new "John", "Watson", 28

# case person2
# in name: "John" => person_name, **other_data
#   puts person_name
#   puts other_data
# end

# case person2
# in Object[name: "John" => person_name, **other_data]
#   puts person_name
#   puts other_data
# end

# case person2
# in Person[name: "John" => person_name, **other_data]
#   puts person_name
#   puts other_data
# end


persons = [person1, person2]

case persons
in [{name: s_name, age: s_age}, {name: j_name, age: j_age}] if s_age + j_age > 50
  puts s_name, s_age
  puts j_name, j_age
end

