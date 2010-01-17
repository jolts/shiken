module Shiken
  class Window
    attr_accessor :app, :window, :options

    def initialize(options)
      raise ShikenError, 'Options should be a hash' unless options.is_a?(Hash)
      @app     = options.app    || Qt::Application.new(ARGV)
      @window  = options.window || Qt::Widget.new
      @options = options
    end

    def buttons
      @buttons ||= []
    end

    def button(button)
      buttons << button
    end

    def method_missing(method, *arguments, &block)
      @window.send(method, *arguments, &block)
    end
  end
end
