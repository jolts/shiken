module Shiken
  module Widgets
    module Windows
      class Main < Widgets::Window
        def initialize(options = {})
          super(options)
          Shiken.logger.debug "initialized window #{self}"
        end
      end
    end
  end
end
