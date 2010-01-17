module Shiken
  class ShikenError < Exception; end
end

$:.unshift File.dirname(__FILE__)
require 'shiken/version'
require 'shiken/windows'
