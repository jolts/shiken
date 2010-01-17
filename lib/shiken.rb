require 'Qt4'

module Shiken
  class ShikenError < Exception; end

  def self.run
    Windows::Main.new.start
  end
end

$:.unshift File.dirname(__FILE__)
require 'shiken/support'
require 'shiken/window'
require 'shiken/windows'
require 'shiken/version'
