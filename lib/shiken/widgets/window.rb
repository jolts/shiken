module Shiken
  module Widgets
    class Window
      attr_accessor :app, :window, :options

      def initialize(options = {})
        raise ShikenError, 'Invalid option format' unless options.is_a?(Hash)

        @window  = Qt::Widget.new
        @app     = options.app
        @options = options

        yield(@window)

        set_size
        show
      end

      def set_size(geometry = options.geometry)
        @window.setFixedSize geometry.width, geometry.height
      end

      def show
        @window.show
      end

      def method_missing(method, *arguments, &block)
        @window.send(method, *arguments, &block) if @window.respond_to?(method.to_sym)
      end
    end
  end
end
