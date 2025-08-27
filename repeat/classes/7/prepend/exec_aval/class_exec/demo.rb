require 'oj'
require_relative 'base'
require_relative 'album'
require_relative 'group'

album = Album.new
group = Group.new

puts album.public_methods false
puts '=' * 20
g = group.public_methods false
puts g.inspect