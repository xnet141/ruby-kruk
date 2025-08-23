require 'benchmark/ips'

URL = 'http://www.thelongestlistofthelongeststuffatthelongestdomainnameatlonglast.com/wearejustdoingthistobestupidnowsincethiscangoonforeverandeverandeverbutitstilllookskindaneatinthebrowsereventhoughitsabigwasteoftimeandenergyandhasnorealpointbutwehadtodoitanyways.html'

def slow
  URL.gsub('http://', 'https://') # заменяет в начале, затем продолжает поиск по всей строке
end

def fast
  URL.sub('http://', 'https://') # заменяет в начале и останавливается
end

def fastest # самый быстрый
  str = URL.dup # dup создает дубликат URL 
  str['http://'] = 'https://'
  str
end

Benchmark.ips do |x|
  x.report('String#gsub') { slow }
  x.report('String#sub')  { fast }
  x.report('String#dup["string"]=')  { fastest }
  x.compare!
end