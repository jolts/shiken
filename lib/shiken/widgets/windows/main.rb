module Shiken
  module Widgets
    module Windows
      class Main < Widgets::Window
        def initialize(options = {})
          options.merge!(:geometry => {:height => 120, :width => 200})
          super(options)

          Shiken.logger.debug "adding quit button to #{self}"
          button Widgets::Buttons::Quit.new(:app => app, :window => window)
          Shiken.logger.debug "initialized window #{self}"
        end

        def start
          window.setFixedSize options.geometry.width, options.geometry.height
          window.show
          Shiken.logger.debug "executing #{app}"
          app.exec
        end
      end
    end
  end
end
