require 'zip' # gem install rubyzip
require 'pathname' # встроен в Ruby

module Zipper
  module Processor
    def open_and_processor_zip(path)
      Zip::File.open_buffer(File.open(path)) do |zip_file|
        fetch_zip_entries(zip_file) { |zip_entry| process zip_entry }
      end
    end

    def fetch_zip_entries(zip_file)

      zip_file.each do |zip_entry|
        next unless proper_ext? zip_entry.name

        yield zip_entry
      end
    end

    def process(zip_entry)
      puts zip_entry.get_input_stream.read
    end

    private

    def proper_ext?(filename)
      '.txt' == Pathname.new(filename).extname
    end
  end
end