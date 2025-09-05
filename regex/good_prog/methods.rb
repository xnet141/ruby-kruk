def get_random_regexp_string
  patterns = ['тор', 'мор']

  pattern = patterns.sample

  letter = pattern.split('').sample

  return pattern.gsub(letter, '.')
end

def word_exists?(word)
  return true
end

puts get_random_regexp_string
