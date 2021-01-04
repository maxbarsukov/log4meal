#require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Log4meal
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    config.exceptions_app = self.routes
  end
end
