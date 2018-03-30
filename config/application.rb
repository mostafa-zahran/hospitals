require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HealthCare
  class Application < Rails::Application

    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: false,
        request_specs: false
      g.fixture_replacement :factory_girl, dir: "spec/factories"
    end

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.autoload_paths << "#{Rails.root}/app/services/comment/"
    config.autoload_paths << "#{Rails.root}/app/services/department/"
    config.autoload_paths << "#{Rails.root}/app/services/doctor/"
    config.autoload_paths << "#{Rails.root}/app/services/governorate/"
    config.autoload_paths << "#{Rails.root}/app/services/hospital/"
    config.autoload_paths << "#{Rails.root}/app/services/specialty/"
    config.autoload_paths << "#{Rails.root}/app/services/user/"

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :options, :put]
      end
    end
  end
end
