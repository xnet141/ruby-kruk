def test(block, l, &no_yield)
  block.call
  l.call "test"
  yield
  no_yield.call
  yield
end

b = -> { puts "lambda" }
l = -> (arg) { puts "lambda222 #{arg}" }

test(b, l) { puts "block" }