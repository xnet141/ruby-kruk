require_relative 'zipper/zipper'
require_relative 'zipper/processor'

Zipper.config do |config|
  config.extension = '.txt'

  config.processing = ->(content) { puts content.upcase }
end
