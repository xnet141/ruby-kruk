require 'benchmark/ips'

ARRAY = [*1..100]

def slow
  ARRAY.shuffle.first
end

def fast
  ARRAY.sample # sample берет одно случайное число из массива, может принимать еще параметры
end

Benchmark.ips do |x|
  x.report('Array#shuffle.first') { slow }
  x.report('Array#sample')        { fast }
  x.report('rand') do
    random = rand 0...ARRAY.size
    ARRAY[random]
  end
  x.compare!
end