class Dragon
  def run
    puts "run"
  end

  def self.hook
    puts "hook"
  end
end

Dragon.new.run
#Dragon.run
Dragon.hook