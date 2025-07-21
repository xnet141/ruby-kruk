module MyLib
  def helper1
    puts "helper1"
  end

  def helper2
    puts "helper2"
  end

  module_function :helper1
end

MyLib::helper1 #нужно указать в модуле module_function :helper1, чтоб вызвать helper1 как метод класса
MyLib.helper1