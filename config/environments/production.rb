Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Code is not reloaded between requests.
  config.cache_classes = true

  # Eager load code on boot. This eager loads most of Rails and
  # your application in memory, allowing both threaded web servers
  # and those relying on copy on write to perform better.
  # Rake tasks automatically ignore this option for performance.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Disable serving static files from the `/public` folder by default since
  # Apache or NGINX already handles this.
  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass

  # Do not fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  config.log_level = :debug

  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false

#confirmations 
config.action_mailer.default_url_options = {:host => 'yourdomain.com'}
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  :address => "127.0.0.1",
  :port    => 25,
  :domain  => 'yourdomain.com'
}

 # aws
 # config.paperclip_defaults = {
  #storage: :s3,
  #s3_credentials: {
   # bucket: ENV.fetch('S3_BUCKET_NAME'),
    #access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'),
    #secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
    #s3_region: ENV.fetch('AWS_REGION'),
  #}
#

end
