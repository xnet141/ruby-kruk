require 'oj'

def parse klass
  method = Oj.load File.read('./methods.json')
  method[klass.to_s.downcase]
end

# puts parse.class
p = parse :Album
puts p.inspect
puts p.class

def atr *var
  puts var.inspect
end

atr p