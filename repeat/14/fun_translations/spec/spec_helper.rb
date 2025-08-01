require 'simplecov'
require 'fun_translations' # почему не require_relative

SimpleCov.start do
  add_filter 'spec/'
end