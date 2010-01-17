module Shiken
  module Application
    def self.start
      extend Widgets::Windows
      extend Widgets::Buttons

      app = Qt::Application.new(ARGV)

      main_window = Widgets::Windows::Main.new(:app => app) do |window|
        button Widgets::Buttons::Quit.new(:window => window, :app => app)
      end

      window main_window

      Shiken.logger.debug "executing #{app} with windows #{windows} and buttons #{buttons}"
      app.exec
    end
  end
end
