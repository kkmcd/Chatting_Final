Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => 'public, max-age=172800'
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true #원래 false였음

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
  
  config.action_mailer.perform_deliveries = true
  # config.action_mailer.raise_delivery_errors = true
  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.default_url_options = { host: 'https://muckbo-kkmcd.c9users.io' }
  config.action_mailer.default_url_options = { host: 'http://ubin-chat-kkmcd.c9users.io/'}
  # config.action_mailer.smtp_settings = {
  #   # user_name:      'postmaster@sandbox54b6142dd9e64fe8899720bf335d7fae.mailgun.org',
  #   # password:       '8a408960b63e67e79ea6e12242777266-8b7bf2f1-ab61acc5',
  #   # domain:         'sandbox54b6142dd9e64fe8899720bf335d7fae.mailgun.org',
  #   user_name: 'postmaster@sandboxbfed34d4b06b44e3ab058963396283c0.mailgun.org',
  #   password: '5be3e910968cb1657e837c228c39e869-8889127d-88bdf1da',
  #   domain: 'sandboxbfed34d4b06b44e3ab058963396283c0.mailgun.org',
  #   address:        'smtp.mailgun.org',
  #   port:          2525, 
  #   authentication: :plain,
  #   enable_starttls_auto: true
  # }
  
end
