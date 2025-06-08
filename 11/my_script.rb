require_relative 'printer'
require_relative 'importer'

printer = Importer::Engine.new
importer = Printer::Engine.new

importer.start
printer.start
