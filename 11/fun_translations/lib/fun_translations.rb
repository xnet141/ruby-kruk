require 'faraday'
require 'zeitwerk' # zeitwerk грузит все из директории lib - нужно правильно именовать папки файлы модули классы

loader = Zeitwerk::Loader.for_gem
loader.setup

module FunTranslations
end
