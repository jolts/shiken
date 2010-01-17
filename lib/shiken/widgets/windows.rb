module Shiken
  module Widgets
    module Windows
      def windows
        @windows ||= []
      end

      def window(window)
        windows << window
      end
    end
  end
end
