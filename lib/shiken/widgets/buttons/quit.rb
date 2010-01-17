module Shiken
  module Widgets
    module Buttons
      class Quit < Widgets::Button
        def initialize(options = {})
          options[:title] ||= 'Quit'
          options[:slot]  ||= 'quit()'

          super(options)
          Shiken.logger.debug "initialized button #{self}"
        end
      end
    end
  end
end
