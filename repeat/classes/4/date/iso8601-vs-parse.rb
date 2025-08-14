require 'benchmark/ips'
require 'date'

STRING = '2018-03-21'.freeze

def fast
  puts Date.iso8601(STRING) # iso8601 лучше использовать для форматирования даты
end

def slow
  puts Date.parse(STRING)
end

Benchmark.ips do |x|
  x.report('Date.iso8601') { fast }
  x.report('Date.parse') { slow }
  x.compare!
end