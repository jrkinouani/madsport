ActionMailer::Base.smtp_settings = {
  domain: 'beyondboxing.fr',
  address:        "smtp.sendgrid.net",
  port:            587,
  authentication: :plain,
  user_name:      'apikey',
  DEFAULT_FROM_EMAIL = 'contact@beyondboxing.fr',
  password:       ENV['SENDGRID_API_KEY']
}
