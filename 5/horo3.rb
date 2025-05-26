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

puts response.body

#puts response.body.class # => string
#raw_tweets = Oj.load(response.body) # => hash
