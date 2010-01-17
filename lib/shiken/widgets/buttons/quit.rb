module Shiken
  module Widgets
    module Buttons
      class Quit < Widgets::Button
        def initialize(options = {})
          options.merge!(:title => 'Quit', :signal => 'clicked()', :slot => 'quit()')
          super(options)
        end
      end
    end
  end
end
