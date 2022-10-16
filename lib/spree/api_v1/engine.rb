require 'rails/engine'

module Spree
  module ApiV1
    class Engine < Rails::Engine
      isolate_namespace Spree
      engine_name 'spree_api_v1'

      # use rspec for tests
      config.generators do |g|
        g.test_framework :rspec
      end

      config.after_initialize do |_app|
        Spree::ApiV1::Config = Spree::ApiV1Configuration.new
      end

      def self.activate
        Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
          Rails.configuration.cache_classes ? require(c) : load(c)
        end
      end

      config.to_prepare(&method(:activate).to_proc)
    end
  end
end
