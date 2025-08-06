require 'faraday'
require 'json'
require 'zeitwerk' # чтоб загружать всефайлы require_relative

loader = Zeitwerk::Loader.for_gem
loader.setup

module FunTranslations
  def self.client(token = nil) # self обязательно для вызова напрямую из модуля
    FunTranslations::Client.new token
  end
end
