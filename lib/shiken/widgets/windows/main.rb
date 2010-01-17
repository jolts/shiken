module Shiken
  module Widgets
    module Windows
      class Main < Widgets::Window
        def initialize(options = {})
          options.merge!(:geometry => {:height => 120, :width => 200})
          super(options)

          Shiken.logger.debug "initialized window #{self}"
        end
      end
    end
  end
end
