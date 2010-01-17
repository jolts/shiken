module Shiken
  module Widgets
    module Windows
      class Main < Widgets::Window
        def initialize(options = {})
          options.merge!(:height => 120, :width => 200)
          super(options)

          button Widgets::Buttons::Quit.new(:app => app, :window => window)
        end

        def start
          window.setFixedSize options.width, options.height
          window.show
          app.exec
        end
      end
    end
  end
end
