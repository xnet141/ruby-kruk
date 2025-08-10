str = gets.strip

# Madam, I'm Adam

def str.palindrome?
  gsub(/\W/, '').downcase.reverse == gsub(/\W/, '').downcase
end

puts str.singleton_class.instance_methods

if str.palindrome?
  puts "yes!!"
end