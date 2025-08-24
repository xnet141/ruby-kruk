class SuperObject < BasicObject
  def initialize
    @proxy = {}
  end

  def method_missing(method, *args, &block)
    return store_attribute(method, *args) if method.end_with?('=')

    return self.__proxy__[method] if self.__proxy__.has_key?(method)

    super
  end

  def inspect
    __proxy__.inject("#<SuperHash: ") do |str, el|
      str += "@#{el[0]}=#{el[1]} "
    end.strip + ">"
  end

  def respond_to?(method, include_private = false)
    # self.__proxy__.has_key?(method) || method.end_with?("=") || super
    "not implemented"
  end

  private

  def store_attribute(method, *args)
    key = method.to_s.delete_suffix('=')
    self.__proxy__[key.to_sym] = args[0]
  end

  def __proxy__
    @proxy
  end
end

s = SuperObject.new
s.key = "John"
s.name = "Wik"
s.lastname = "Watson"
puts s.key
puts s.inspect
puts s.respond_to?(:__id__)
