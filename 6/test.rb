authors = Hash.new([])

authors[:homer] << 'The Odyssey' #=> не правильно, The Odyssey присваивается всем ключам по умолчанию

puts authors.inspect # => {}
puts authors[:test] # => The Odyssey


authors[:homer] += ['The Odyssey'] #=> Правильно

puts authors[:plato] # => []
puts authors # => {:homer=>["The Odyssey"]}
puts authors[:test1111]
puts authors[:test222222]
