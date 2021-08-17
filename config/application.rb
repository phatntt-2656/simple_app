require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Myapp
  class Application < Rails::Application
    config.load_defaults 6.1

    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]

    config.i18n.available_locales = [:en, :vi]

    config.i18n.default_locale = :en

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
