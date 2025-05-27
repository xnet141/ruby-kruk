words = ["apple", "banana", "apple", "orange", "banana", "apple"]
count_words = Hash.new(0) # очень важно так создать хэш
puts count_words

words.each do |word|
  count_words[word] += 1
  @test_count = word
end

puts @test_count
puts count_words
