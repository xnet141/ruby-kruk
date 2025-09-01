require 'kramdown'
require 'pathname'

class Converter
  attr_reader :threads

  def initialize(folder = 'md', in_ext = '.md')
    @folder = folder
    @in_ext = in_ext
    @threads = []
  end

  def convert!
    each_file do |file|
      puts "Starting with #{file}"
      in_thread do
        converted_data = do_convert File.read(file)
        save converted_data, file.basename(@in_ext)
      end
      puts "Next file..."
    end
    @threads.map(&:value)
  end

  private

  def save(data, filename)
    path = File.expand_path("./html/#{filename}.html", __dir__)
    File.open(path, 'w:UTF-8') do |f|
      f.write data
    end
    path
  end

  def do_convert(data)
    sleep 1
    Kramdown::Document.new(data).to_html
  end

  def in_thread(&block)
    @threads << Thread.new(&block)
  end

  def each_file
    return unless block_given?

    Dir.glob("#{@folder}/*#{@in_ext}").each do |file|
      yield Pathname.new(File.expand_path(file, __dir__))
    end
  end
end

converter = Converter.new
results = converter.convert!

puts converter.threads
puts results.inspect