require "jquery/unveil/rails/version"

module Jquery
  module Unveil
    module Rails
      class Engine < ::Rails::Engine
        initializer 'Modernizr precompile hook', :group => :all do |app|
          app.config.assets.precompile += ['jquery.unveil.js']
        end
      end
    end
  end
end
