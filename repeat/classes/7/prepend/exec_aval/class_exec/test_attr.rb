class Pavel
  attr_reader(:one,:two,:three)
end

pavel = Pavel.new
puts pavel.public_methods(false)

puts %q{name, alex}.inspect.class

class Alex
  attr_reader "ssssssssssssssssssssssssssssssssssss"
end

attrs = ["dom", "lom", "star"]

Alex.class_exec do 
  puts attrs
  q = attr_reader(*attrs) # Оператор звёздочка (*) в контексте attr_reader используется для распаковки массива аргументов и позволяет передать несколько переменных одновременно
  puts q
end

alex = Alex.new
puts alex.public_methods(false).inspect

