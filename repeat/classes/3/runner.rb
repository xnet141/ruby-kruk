require_relative 'processor/processor'

Zipper::Processor.open_and_processor_zip('./arch.zip')



# puts Zip::File.open_buffer(File.open('./arch.zip'))