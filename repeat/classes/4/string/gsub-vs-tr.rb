require 'benchmark/ips'

SLUG = 'writing-fast-ruby'

def slow
  SLUG.gsub('-', ' ') # gsub для регулярных выражений
end

def fast
  SLUG.tr('-', ' ') # tr для простой работы, но быстрее 
end

Benchmark.ips do |x|
  x.report('String#gsub') { slow }
  x.report('String#tr')   { fast }
  x.compare!
end