require 'simplecov'
require 'webmock/rspec'

SimpleCov.start do
  add_filter 'spec/'
end

require 'fun_translations' # почему не require_relative? Установлен gem fun_translations?