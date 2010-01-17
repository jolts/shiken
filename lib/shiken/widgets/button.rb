module Shiken
  module Widgets
    class Button
      attr_accessor :button, :title, :options

      def initialize(options = {})
        @title   = options.title
        @button  = Qt::PushButton.new(@title, options.window)
        @options = options

        @button.setGeometry(options.geometry.x,
                            options.geometry.y,
                            options.geometry.width,
                            options.geometry.height)
        connect(options.signal, options.slot)
      end

      def connect(signal, slot)
        Shiken.logger.debug "connecting button #{self} with #{signal}->#{slot}"
        Qt::Object.connect @button, SIGNAL(signal), @options.app, SLOT(slot)
      end

      def method_missing(method, *arguments, &block)
        @button.send(method, *arguments, &block) if @button.respond_to?(method.to_sym)
      end
    end
  end
end
