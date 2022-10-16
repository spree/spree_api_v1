require 'spree/api_v1/responders'

module Spree
  module ApiV1
    module ControllerSetup
      def self.included(klass)
        klass.class_eval do
          include CanCan::ControllerAdditions

          prepend_view_path Rails.root + 'app/views'
          append_view_path File.expand_path('../../../app/views', File.dirname(__FILE__))

          self.responder = Spree::ApiV1::Responders::AppResponder
          respond_to :json
        end
      end
    end
  end
end
