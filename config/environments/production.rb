ReloadTransportation::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Disable Rails's static asset server (Apache or nginx will already do this)
  config.serve_static_assets = false

  # Compress JavaScripts and CSS
  config.assets.compress = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = false

  # Generate digests for assets URLs
  config.assets.digest = true
  
  config.middleware.use ExceptionNotifier,
    sender_address: 'michaelw2608@gmail.com',
    exception_recipients: 'woodsmall.michael@gmail.com'
    
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      :address              => "smtp.gmail.com",
      :port                 => 587,
      :domain               => 'michaelsplayground.com',
      :user_name            => 'michaelw2608@gmail.com',
      :password             => 'h4rryp0tt3r26',
      :authentication       => 'plain',
      :enable_starttls_auto => true  }
      
  config.assets.precompile << "bootstrap.css"
  config.assets.precompile << "bootstrap-responsive.css"
  config.assets.precompile << "fancybox.css"
  config.assets.precompile << "hover.css"
  config.assets.precompile << "icons-color.css"
  config.assets.precompile << "icons.css"
  config.assets.precompile << "parallax-slider.css"
  config.assets.precompile << "parallax-slider2.css"
  config.assets.precompile << "social-icons.css"
  config.assets.precompile << "style.css"
  config.assets.precompile << "styleie9.css"
  
  config.assets.precompile << "anchor.js"
  config.assets.precompile << "bootstrap.js"
  config.assets.precompile << "carousel.js"
  config.assets.precompile << "custom.js"
  config.assets.precompile << "fancybox.js"
  config.assets.precompile << "flexslider.js"
  config.assets.precompile << "iso-custom.js"
  config.assets.precompile << "isotope.js"
  config.assets.precompile << "jquery-1.8.2.js"
  config.assets.precompile << "jquery.cslider.js"
  config.assets.precompile << "jquery.easing-1.3.pack.js"
  config.assets.precompile << "jquery.fancybox-1.3.4.pack.js"
  config.assets.precompile << "jquery.gmap.js"
  config.assets.precompile << "jquery.gmap.min.js"
  config.assets.precompile << "jquery.isotope.min.js"
  config.assets.precompile << "jquery.js"
  config.assets.precompile << "jquery.mousewheel-3.0.4.pack.js"
  config.assets.precompile << "knockout.js"
  config.assets.precompile << "slider.js"
  
  

  # Defaults to nil and saved in location specified by config.assets.prefix
  # config.assets.manifest = YOUR_PATH

  # Specifies the header that your server uses for sending files
  # config.action_dispatch.x_sendfile_header = "X-Sendfile" # for apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for nginx

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  # config.force_ssl = true

  # See everything in the log (default is :info)
  # config.log_level = :debug

  # Prepend all log lines with the following tags
  # config.log_tags = [ :subdomain, :uuid ]

  # Use a different logger for distributed setups
  # config.logger = ActiveSupport::TaggedLogging.new(SyslogLogger.new)

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  # Enable serving of images, stylesheets, and JavaScripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"

  # Precompile additional assets (application.js, application.css, and all non-JS/CSS are already added)
  # config.assets.precompile += %w( search.js )

  # Disable delivery errors, bad email addresses will be ignored
  # config.action_mailer.raise_delivery_errors = false

  # Enable threaded mode
  # config.threadsafe!

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  # config.active_record.auto_explain_threshold_in_seconds = 0.5
end
