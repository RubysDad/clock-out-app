Rails.application.configure do

  config.eager_load = false

  config.consider_all_requests_local = true

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

  config.active_support.deprecation = :log

  config.active_record.migration_error = :page_load

  config.assets.debug = true

  config.assets.quiet = true

  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
  
  config.action_mailer.perform_caching = false
  
  config.action_mailer.perform_deliveries = true
  
  config.action_mailer.raise_delivery_errors = true
  
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
end
