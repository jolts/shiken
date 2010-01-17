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

        init_main_window
        connect_events
        show
      end

      private

      def init_main_window
        @window = Qt::Widget.new
        @window.set_fixed_size 125, 75
        @window.set_window_title self.class.to_s
        @window.layout = Qt::VBoxLayout.new do |layout| 
          layout.add_widget title_label
          layout.add_widget quit_button
        end
      end

      def title_label
        @title_label ||= Qt::Label.new self.class.to_s
      end

      def quit_button
        @quit_button ||= Qt::PushButton.new 'Quit', @window
      end

      def connect_events
        Qt::Object.connect quit_button, SIGNAL('clicked()'), options.app, SLOT('quit()')
      end

      def show
        @window.show
      end
    end
  end
end
