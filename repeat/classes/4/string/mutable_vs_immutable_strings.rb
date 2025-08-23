require "benchmark/ips"

# Allocates new string over and over again
def without_freeze
  "To freeze or not to freeze"
end

# Keeps and reuses shared string
def with_feeze
  "To freeze or not to freeze".freeze # freeze делает строку не изменяемой, работа с неизменяемыми данными быстрее
end

Benchmark.ips do |x|
  x.report("Without Freeze") { without_freeze }
  x.report("With Freeze") { with_feeze }
  x.compare!
end