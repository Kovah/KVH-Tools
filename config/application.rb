require_relative 'boot'

#require 'active_record/railtie'
#require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_view/railtie'
#require 'action_mailer/railtie'
require 'active_job/railtie'
require 'action_cable/engine'
require 'active_model'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rails6
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
  end
end
