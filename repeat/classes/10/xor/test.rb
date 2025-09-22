module Xor
  class Cipher
    attr_accessor :var

    def initialize var
      @var = var
    end

    def cipher a
      puts a
    end
  end
end

res = Xor::Cipher.new(222).cipher 444
puts res

res_obj = Xor::Cipher.new(222)
puts res_obj

arr =  *(0...5)
puts arr.rotate()

p "=" * 40

mas = [[1,3],[2,4],[6,7]]

a = mas.map {|a, b| a.to_i + b.to_i}

puts a

p "=" * 40

byte_str = "test".unpack "U*"
limit = "billlll"

p byte_str.dup.fill(byte_str.length...limit.length) {|i| byte_str.rotate(i).first; p i} -> для работы fill очень важен блок

p byte_str.dup.fill(byte_str.length...limit.length)

p "test"