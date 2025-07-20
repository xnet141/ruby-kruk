class InputReader
  def read args
    puts args
    puts args.inspect
    return 10, 2
  end
end

input_reader = InputReader.new
input_reader.read(
                    alex: "genius",
                    nick: "dildo_man",
                    bob: "cock"
                ) 

puts input_reader.read(
                    alex: "genius",
                    nick: "dildo_man",
                    bob: "cock"
                ) 
