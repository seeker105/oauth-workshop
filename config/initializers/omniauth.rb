Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "twitter_id", "twitter_secret"
end
