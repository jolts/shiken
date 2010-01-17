module Shiken
  module Application
    def self.start
      app = Qt::Application.new(ARGV)

      Widgets::Windows::Main.new(:app => app) do |window|
        Widgets::Buttons::Quit.new(:window => window, :app => app)
      end

      Shiken.logger.debug "executing #{app}"
      app.exec
    end
  end
end
