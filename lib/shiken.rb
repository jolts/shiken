require 'logger'
require 'Qt4'

module Shiken
  class ShikenError < Exception; end

  def self.logger
    @logger ||= Logger.new(STDOUT)
  end

  def self.run
    Shiken::Application.start
  end
end

$:.unshift File.dirname(__FILE__)
require 'shiken/support'
require 'shiken/widgets'
require 'shiken/widgets/window'
require 'shiken/widgets/button'
require 'shiken/widgets/windows'
require 'shiken/widgets/windows/main'
require 'shiken/widgets/buttons'
require 'shiken/widgets/buttons/quit'
require 'shiken/application'
require 'shiken/version'
