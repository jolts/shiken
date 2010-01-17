$:.unshift File.join(File.dirname(__FILE__), '..')
require 'lib/shiken'

puts "Shiken #{Shiken::Version::STRING}"
Shiken.run
