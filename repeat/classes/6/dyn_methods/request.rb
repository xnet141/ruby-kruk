module Request
  def post(params)
    puts "HTTP POST: #{params.inspect}"

    params.merge(id: rand(100000))
  end
end


