Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, Settings.github.key, Settings.github.secret, scope: 'user:email'
  provider :facebook, Settings.facebook.key, Settings.facebook.secret
  provider :twitter, Settings.twitter.key, Settings.twitter.secret
end
