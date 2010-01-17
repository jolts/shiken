module Shiken
  module Widgets
    class Window
      attr_accessor :app, :window, :buttons, :options

      def initialize(options = {}, &block)
        raise ShikenError, 'Options should be a hash' unless options.is_a?(Hash)

        @app     = options.app
        @window  = Qt::Widget.new
        @buttons = block.call(@window)
        @options = options

        @window.setFixedSize options.geometry.width, options.geometry.height
        @window.show
      end

      def method_missing(method, *arguments, &block)
        @window.send(method, *arguments, &block)
      end
    end
  end
end
