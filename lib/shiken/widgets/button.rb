module Shiken
  module Widgets
    class Button
      attr_accessor :button, :title, :options

      def initialize(options = {})
        @title   = options.title
        @button  = Qt::PushButton.new(@title, options.window)
        @options = options

        @button.setGeometry 10, 40, 180, 40
        connect(options.signal, options.slot)
      end

      def connect(signal, slot)
        Qt::Object.connect @button, SIGNAL(signal), @options.app, SLOT(slot)
      end

      def method_missing(method, *arguments, &block)
        @button.send(method, *arguments, &block)
      end
    end
  end
end
