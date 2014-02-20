require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module BronyBlindBagCheat
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'
 #   conifig.time_zone = 'Central Time (US & Canda)'
 #cuases catastrophic erros with command : RAILS_ENV=production rake assets:precompile 

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # custom directories with classes and modules you want to be autoloadable
    # config.autoload_paths += %w(#{config.root}/extras)
    # exapmle:
    # config.autoload_paths += %w(#{config.root}/app/presenters)
    # %w functions as a whitespce-delimited array literal and is used quite often in the Rails codebase for convenience
  end

end
