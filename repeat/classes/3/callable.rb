# my_proc = Proc.new { |msg| puts msg }
# my_proc = proc { |msg| puts msg }
# my_proc.call("Hello world")
# my_proc.call("Hell YouTube")

# my_lambda = lambda { |msg| puts msg }
# my_lambda = -> (msg) { puts msg } # stabby lambda, thin arrow
# my_lambda.call("Hell Tiktok")

# def my_method(callable)
#   result = callable.call("Hello world!!")

#   puts "The result is #{result}"
#   puts "I have called #{callable.inspect}!"
# end

# my_lambda = lambda do |msg| 
#   puts msg 
#   return msg
# end

# my_method(my_lambda)

### !! LAMBDA ЛУЧШЕ ПРОЦЕДУРЫ !! ###


def my_method(callable)
  result = callable.call("Hello world!!", 1, 2, 3) # процедура игнорирует лишние аргументы
 
  puts "The result is #{result}"
  puts "I have called #{callable.inspect}!"
end

my_lambda = proc do |msg| # процедура делает return(выход) не только из самой себя, но и из метода, где был сделан вызов 
  puts msg 
  return msg
end

my_method(my_lambda)



