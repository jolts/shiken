module Shiken
  module Widgets
    module Buttons
      def buttons
        @buttons ||= []
      end

      def button(button)
        buttons << button
      end
    end
  end
end
