class SuperHash < Hash
  def method_missing(method, *args, &block)
    store_attribute(method, *args) if method.end_with?('=')
  end

  private

  def store_attribute(method, *args)
    
  end
end

s = SuperHash.new
s.key = "value"
puts s.key
