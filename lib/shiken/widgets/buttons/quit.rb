module Shiken
  module Widgets
    module Buttons
      class Quit < Widgets::Button
        def initialize(options = {})
          options.merge!(:title => 'Quit', :signal => 'clicked()', :slot => 'quit()',
                         :geometry => {
                           :x => 10,
                           :y => 40,
                           :width => 180,
                           :height => 40
                         })
          super(options)
          Shiken.logger.debug "initialized button #{self}"
        end
      end
    end
  end
end
