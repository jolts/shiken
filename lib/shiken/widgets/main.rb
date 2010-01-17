module Shiken
  module Widgets
    class Main
      attr_accessor :options, :window

      def self.show(options = {})
        raise ShikenError, 'Invalid options format' unless options.is_a?(Hash)

        Shiken.logger.debug "showing #{self}"
        new(options)
      end

      def initialize(options)
        @options = options

        main_window
        quit_button
        show
      end

      private

      def main_window
        @window = Qt::Widget.new
        @window.set_fixed_size 125, 75
        @window.set_window_title self.class.to_s
      end

      def quit_button
        b = Qt::PushButton.new('Quit', @window)
        b.set_geometry 25, 25, 75, 25
        Qt::Object.connect b, SIGNAL('clicked()'), options.app, SLOT('quit()')
      end

      def show
        @window.show
      end
    end
  end
end
