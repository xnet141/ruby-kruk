require 'json'

# def foo
#   def foo2
#     4
#   end
# end
#
# f = foo
# ff = foo.foo2
#
# puts f.foo2
# puts ff

var = JSON.parse('{"\test": "dsada", "test2": "frfr"}')

puts var
