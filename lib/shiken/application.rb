module Shiken
  module Application
    def self.start
      app = Qt::Application.new(ARGV)

      Widgets::Windows::Main.new(:geometry => {:height => 75, :width  => 125}) do |window|
        Widgets::Buttons::Quit.new(:app => app, :window => window, :geometry =>
                                   {:x => 25, :y => 25, :width => 75, :height => 25})
      end

      Shiken.logger.debug "executing #{app}"
      app.exec
    end
  end
end
