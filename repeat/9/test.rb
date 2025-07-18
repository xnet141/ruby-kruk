class Dragon
  def run
    puts "run"
  end

  def self.hook
    puts "hook"
  end

  def array *arr
    puts arr.inspect
  end
end

Dragon.new.run
#Dragon.run
Dragon.hook

Dragon.new.array 1, 3, 4