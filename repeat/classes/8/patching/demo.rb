require_relative 'lib/external_lib'
require_relative 'own_code'

worker = ExternalLib::Main.new 'MyTestName' # => 'my_test_name'

result = worker.do_work

puts result

# puts "HereIsSample".snakecase

