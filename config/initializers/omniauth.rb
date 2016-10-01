Rails.application.config.middleware.use OmniAuth::Builder do
  provide :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end
