require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module RetroRentals
  class Application < Rails::Application
    config.generators do |generate|
      generate.assets false
      generate.helper false
      generate.test_framework :test_unit, fixture: false
    end

    config.load_defaults 7.0

    # Add the following line to add the app/javascript directory to the asset pipeline
    config.assets.paths << Rails.root.join('app', 'javascript')

    # Add the following line so that javascript pre-compiles in production
    config.assets.precompile += ['application.js']

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
