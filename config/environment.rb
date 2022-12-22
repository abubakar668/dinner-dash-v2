# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Cloudinary.config do |config|
  config.cloud_name = 'abubakar'
  config.api_key = Rails.application.credentials.api.fetch(:api_key)
  config.api_secret = Rails.application.credentials.api.fetch(:api_secret)
  config.secure = true
  config.cdn_subdomain = true
end

Rails.application.configure do
  config.serve_static_assets = true
  config.assets.compile = true
  config.active_storage.service = :cloudinary
  config.action_mailer.default_url_options = { host: 'dinnerdash-abubakar.herokuapp.com', protocol: 'https' }
  config.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: 'smtp.gmail.com',
    port: 587,
    user_name: Rails.application.credentials.mail.fetch(:username),
    password: Rails.application.credentials.mail.fetch(:app_password),
    domain: 'dinnerdash-abubakar.herokuapp.com',
    authentication: 'plain',
    enable_starttls_auto: true
  }
end
