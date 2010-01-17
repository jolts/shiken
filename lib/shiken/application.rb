module Shiken
  module Application
    def self.start
      app = Qt::Application.new(ARGV)

      main_geo = {:height => 75, :width  => 125}
      quit_geo = {:x => 25, :y => 25, :width => 75, :height => 25}

      Widgets::Windows::Main.new(:geometry => main_geo) do |window|
        Widgets::Buttons::Quit.new(:app => app, :window => window, :geometry => quit_geo)
      end

      Shiken.logger.debug "executing #{app}"
      app.exec
    end
  end
end
