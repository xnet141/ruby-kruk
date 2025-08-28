require_relative 'lib/external_lib'

worker = ExternalLib::Main.new 'MyTestName' # => 'my_test_name'

result = worker.do_work

puts result

puts "HereIsSample".snakecase

