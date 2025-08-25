module Request
  def post(params)
    puts "HTTP POST: #{params.inspect}"

    params.merge(id: rand(100000))
  end

  def patch(id, params)
    puts "HTTP PATCH: #{id} => #{params.inspect}"
    
    params.merge(id: id)
  end

  def delete(id)
    puts "HTTP DELETE: #{id}"

    {
      id: id,
      deleted: true
    }
  end
end


