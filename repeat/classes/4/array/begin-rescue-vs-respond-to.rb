require 'benchmark/ips'

def slow 
  begin
    writing
  rescue
    'fast ruby'
  end
end

def fast
  if respond_to?(:writing) # respond_to? -> отвечает ли объект на метод writing(есть ли этот метод у объекта)
    writing
  else
    'fast ruby'
  end
end

Benchmark.ips do |x|
  x.report('begin...rescue') { slow }
  x.report('respond_to?') { fast }
  x.compare!
end