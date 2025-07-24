require 'faraday'
require 'json'
require 'zeitwerk' #чтоб загружать всефайлы require_relative

loader = Zeitwerk::Loader.for_gem
loader.setup 

module FunTranslations
  def self.client
    FunTranslations::Client.new
  end
end