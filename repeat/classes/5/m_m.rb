class Animal
  def method_missing(method, *args, &block)
    puts "No method #{method}"
    puts "#{args} #{block.call}"
  end
end

animal = Animal.new

animal.name(1, 2) {puts "Hello from block"}
