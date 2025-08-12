require 'zip' # gem install rubyzip
require 'pathname' # встроен в Ruby

module Zipper
  module Processor
    class << self
      def open_and_processor_zip(path)
        Zip::File.open_buffer(File.open(path)) do |zip_file| # open buffer принимает блок, который имеет одну локальную переменную zip_file, которая содержит zip архив
          fetch_zip_entries(zip_file) { |zip_entry| process zip_entry }
        end
      end

      def fetch_zip_entries(zip_file)
        return unless block_given?

        zip_file.each do |zip_entry|
          next unless proper_ext? zip_entry.name

          yield zip_entry
        end
      end

      def process(zip_entry)
        Zipper.processing.call(zip_entry.get_input_stream.read) # zip_entry.get_input_stream.read вывести содержмое файла из архива -> get_input_stream.read
      end

      private

      def proper_ext?(filename)
        Zipper.extension == Pathname.new(filename).extname
      end
    end
  end
end