require 'faraday'
require 'json'
require 'oj'

token = 'AAAAAAAAAAAAAAAAAAAAAFLV1wEAAAAAuiJoftMgJagUCgEnW4li7KdSLWs%3DftF6DRIWFoiR3rcy30sLAe4zQ9UBnVfxGWnWXuSG4ks9AP7BYk'
url = 'https://api.x.com/2/users/1340584098075717635/tweets'

response = Faraday.get(
  url,
  {max_results: 12},
  { "Authorization" => "Bearer #{token}" }
)

#puts response.body.class # => string
raw_tweets = Oj.load(response.body) # => hash
tweets = raw_tweets['data'].map {|raw_tweet| raw_tweet["text"]}

puts tweets # => array, содержащий string



puts "test!"

print "введите знак зодиака: "
zodiac = gets.strip.downcase

found = tweets.select do |tweet| # => выдаем элемент, который удовлетворяет условию
  # само условие пишем внутри этого блока do-end
  puts tweet[0..12]
  tweet.downcase.include? zodiac
end

puts found[0].class  # или found.first
puts found[0]


tweets.each { |tweet| puts tweet if tweet.downcase.include? zodiac }
