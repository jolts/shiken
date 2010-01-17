module Shiken
  module Application
    def self.start
      extend Shiken::Widgets

      app = Qt::Application.new(ARGV)

      self.class_eval do
        widget Widgets::Main.show :app => app
      end

      Shiken.logger.debug "executing #{app.inspect}"
      app.exec
    end
  end
end
