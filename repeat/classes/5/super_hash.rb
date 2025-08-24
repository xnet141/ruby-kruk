class SuperHash < Hash
  def method_missing(method, *args, &block)
    return store_attribute(method, *args) if method.end_with?('=')

    return self[method] if self.has_key?(method)

    super # вызываем method_missing на классе родителя
  end

  def respond_to_missing?(method, include_private = false)
    self.has_key?(method) || method.end_with?("=") || super
  end

  # def self
  #   self.inspect
  # end

  private

  def store_attribute(method, *args)
    key = method.to_s.delete_suffix('=')
    self[key.to_sym] = args[0]
  end
end

# self указывает на объект s
s = SuperHash.new
s.key = "value"
s.name = "John"
# puts s.key
puts s.name
puts s.respond_to?(:name=)
