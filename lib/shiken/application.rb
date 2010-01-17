module Shiken
  module Application
    def self.start
      extend Shiken::Widgets

      app = Qt::Application.new(ARGV)
      widget Widgets::Main.new.show

      Shiken.logger.debug "executing #{app.inspect}"
      app.exec
    end
  end
end
