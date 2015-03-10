OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '415436648618689', '720559de48816ecb0b20a142aab1df47'
end