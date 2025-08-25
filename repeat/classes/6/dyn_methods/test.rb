class Roman
  def self.test var
    puts "#{var}"
  end
end

Roman.send :test, "13"