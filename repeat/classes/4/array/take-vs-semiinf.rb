require 'benchmark/ips'

ARRAY = [*1..100]


def fast
  ARRAY.take 3
end

def slow
  ARRAY[..2] # взять элементы с 0 по 2, то есть первые 3
end

Benchmark.ips do |x|
  x.report('Array#take') { fast }
  x.report('Array#[]') { slow }
  x.compare!
end