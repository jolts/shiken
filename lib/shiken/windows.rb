require 'Qt4'

module Shiken
  module Windows
    class MainWindow
      attr_accessor :app,:quit_button, :window

      def initialize(parent=nil)
        @app = Qt::Application.new(ARGV)
        @window = Qt::Widget.new
      end

      def initialize_buttons
        @quit_button = Qt::PushButton.new('Quit', window)
        @quit_button.setGeometry(10, 40, 180, 40)
        Qt::Object.connect(@quit_button, SIGNAL('clicked()'), app, SLOT('quit()'))
      end

      def start
        @window.setFixedSize(200,120)
        @window.show
        @app.exec
      end
    end
  end
end

