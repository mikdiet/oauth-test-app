if Rails.env.production?
  Rails.application.middleware.insert_after ActionDispatch::DebugExceptions, BetterErrors::Middleware
  BetterErrors.logger = Rails.logger
  BetterErrors.application_root = Rails.root.to_s
end

