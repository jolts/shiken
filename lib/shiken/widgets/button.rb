module Shiken
  module Widgets
    class Button
      attr_accessor :button, :options

      def initialize(options = {})
        raise ShikenError, 'Invalid option format' unless options.is_a?(Hash)

        @button  = Qt::PushButton.new(options[:title], options[:window])
        @options = options

        set_geometry
        connect
      end

      def set_geometry(geometry = options[:geometry])
        @button.setGeometry geometry.x, geometry.y, geometry.width, geometry.height
      end

      def connect(slot = options[:slot])
        Shiken.logger.debug "connecting button #{self} with #{signal}->#{slot}"
        Qt::Object.connect @button, SIGNAL('clicked()'), options[:app], SLOT(slot)
      end

      def method_missing(method, *arguments, &block)
        @button.send(method, *arguments, &block) if @button.respond_to?(method.to_sym)
      end
    end
  end
end
