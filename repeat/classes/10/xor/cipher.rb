module XorCipher
  class BaseCipher
    def initialize(input_string, password)
      @input_string = input_string.unpack "U"
      @password = pad_or_trim password.unpack "U*", @input_string.length
    end

    def call
      @input_strip.zip(@password).map {|a, b| a.to_i ^ b.to_i} # для страховки от nil
    end

    private

    def pad_or_trim(byte_str, limit)
      return if byte_str.length == limit

      byte_str.length > limit ?
        byte_str[0..limit] :
        byte_str.dup.fill(byte_str.length...limit) {|i| str.rotate(i).first} # byte_str строка ?
    end
  end

  class Cipher < BaseCipher
    alias :cipher :call
  end

  class Decipher < BaseCipher
    alias :decipher :call
  end
end

case ARGV
in ["cipher", input_string, password, filename, *]
  result = XorCipher::Cipher.new(input_string, password).cipher

  File.open(filename, "wb:utf-8") {|f| f.write(result)}
in ["decipher", password, filename, *]
  data = File.read(filename, mode: 'rb', encoding: 'utf-8')

  puts XorCipher::Decipher.new(data, password).decipher
else
  puts "Unknown arguments!"
  exit  
end