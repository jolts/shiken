module Shiken
  module Widgets
    class Main < Qt::Widget
      attr_accessor :options

      def initialize(options = {})
        raise ShikenError, 'Invalid options format' unless options.is_a?(Hash)
        @options = options
        super()

        set_fixed_size 125, 75
        set_window_title self.class.to_s

        vbox_layout.add_widget title_label
        vbox_layout.add_widget quit_button

        set_layout(vbox_layout)

        connect_events

        Shiken.logger.debug "showing #{self}"
      end

    private

      def vbox_layout
        @vbox_layout ||= Qt::VBoxLayout.new
      end

      def title_label
        @title_label ||= Qt::Label.new self.class.to_s
      end

      def quit_button
        @quit_button ||= Qt::PushButton.new 'Quit', @window
      end

      def connect_events
        Qt::Object.connect quit_button, SIGNAL('clicked()'), $qApp, SLOT('quit()')
      end
    end
  end
end
