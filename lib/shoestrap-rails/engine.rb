module Shoestrap
  module Rails
    class Engine < ::Rails::Engine
      initializer 'bootstrap-sass.assets.precompile' do |app|
        app.config.assets.paths << root.join('assets', stylesheets).to_s
      end
    end
  end
end