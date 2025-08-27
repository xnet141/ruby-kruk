# str = "madam"

# str.instance_exec do
#   def palindrome?
#     str_no_spaces = self.gsub(/\s/, '')
#     str_no_spaces == str_no_spaces.reverse
#   end
# end

# puts str.palindrome?
# puts str

String.instance_exec do
  def palindrome?
    puts "Palindrome method called ............."
  end
end

String.palindrome?