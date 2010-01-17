module Shiken
  module Widgets
    def widgets
      @widgets ||= []
    end

    def widget(view)
      widgets << view
    end
  end
end
