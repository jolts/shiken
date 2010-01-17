require 'logger'
require 'Qt4'

module Shiken
  class ShikenError < Exception; end

  def self.logger
    @logger ||= Logger.new(STDOUT)
  end
end

$:.unshift File.dirname(__FILE__)
require 'shiken/support'
require 'shiken/widgets'
require 'shiken/widgets/main'
require 'shiken/application'
require 'shiken/version'
