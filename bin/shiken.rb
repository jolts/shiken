$:.unshift File.join(File.dirname(__FILE__), '..')
require 'lib/shiken'

module Shiken
  class << self
    def exec
      mw = Windows::MainWindow.new
      mw.initialize_buttons
      mw.start
      mw.show
    end
  end
end

puts "Shiken #{Shiken::Version::STRING}"
Shiken.exec
