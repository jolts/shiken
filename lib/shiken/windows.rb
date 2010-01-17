$:.unshift File.dirname(__FILE__)
require 'windows/main'

module Shiken
  module Windows
    def windows
      @windows ||= []
    end

    def window(new_window)
      @windows << new_window
    end
  end
end
