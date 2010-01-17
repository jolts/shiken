require 'Qt4'

module Shiken
  class ShikenError < Exception; end

  def self.run
    mw = Windows::MainWindow.new
    mw.initialize_buttons
    mw.start
    mw.show
  end
end

$:.unshift File.dirname(__FILE__)
require 'shiken/windows'
require 'shiken/version'
