require 'spree/api_v1/responders/rabl_template'

module Spree
  module ApiV1
    module Responders
      class AppResponder < ActionController::Responder
        include RablTemplate
      end
    end
  end
end
