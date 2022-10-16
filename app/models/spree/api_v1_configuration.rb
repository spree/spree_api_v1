module Spree
  class ApiV1Configuration < Preferences::Configuration
    preference :requires_authentication, :boolean, default: true
  end
end
