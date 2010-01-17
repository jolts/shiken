$:.unshift File.join(File.dirname(__FILE__), '..')
require 'lib/shiken'

Shiken.logger.info "starting Shiken #{Shiken::Version::STRING}"
Shiken::Application.start
