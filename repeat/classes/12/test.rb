class Roman
  def method_missing method
    if method.to_s =~ /blabla/ 
      puts method
    else  
      super
    end
  end

  def glog par1
    puts "Hi from #{par1}"
  end
end

roman = Roman.new

roman.send :glog, "9mm"

roman.blabla1

roman.dhgff