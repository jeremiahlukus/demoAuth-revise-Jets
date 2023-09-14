Jets.application.configure do

  config.action_mailer.default_url_options = { host: 'localhost', port: 3000, protocol: "https" }
  config.action_mailer.perform_deliveries = true
  config.action_mailer.show_previews = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:              'smtp.gmail.com',
    port:                 587,
    domain:               'gmail.com',
    user_name:            ENV['STMP_USER'],
    password:             ENV['STMP_PASS'],
    authentication:       'plain'}

    #enable_starttls_auto: true}
  #
  # Example:
  # config.function.memory_size = 1536

  # config.action_mailer.raise_delivery_errors = false
  # Docs: http://rubyonjets.com/docs/email-sending/
end
