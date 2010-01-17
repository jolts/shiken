module Shiken
  module Windows
    class Main < Window
      def initialize
        super(:height => 120, :width => 200)
        button quit_button
      end

      def quit_button
        quit_button = Qt::PushButton.new('Quit', window)
        quit_button.setGeometry 10, 40, 180, 40
        Qt::Object.connect quit_button, SIGNAL('clicked()'), app, SLOT('quit()')
      end

      def start
        window.setFixedSize options.width, options.height
        window.show
        app.exec
      end
    end
  end
end
