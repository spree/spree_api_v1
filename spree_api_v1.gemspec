# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_api_v1/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_api_v1'
  s.version     = SpreeApiV1.version
  s.summary     = 'Add extension summary here'
  s.description = 'Add (optional) extension description here'
  s.required_ruby_version = '>= 2.5'

  s.author    = 'You'
  s.email     = 'you@example.com'
  s.homepage  = 'https://github.com/your-github-handle/spree_api_v1'
  s.license = 'BSD-3-Clause'

  s.files       = `git ls-files`.split("\n").reject { |f| f.match(/^spec/) && !f.match(/^spec\/fixtures/) }
  s.require_path = 'lib'
  s.requirements << 'none'

  # s.add_development_dependency 'spree_dev_tools'
  # s.add_development_dependency 'i18n-tasks'
  # s.add_development_dependency 'jsonapi-rspec'
  # s.add_development_dependency 'multi_json'
  # s.add_development_dependency 'rswag-specs'

  s.add_dependency 'spree', '>= 4.4.0.rc1'
  s.add_dependency 'spree_extension'
  # s.add_dependency 'bcrypt', '~> 3.1'
  # s.add_dependency 'doorkeeper', '~> 5.3'
  # s.add_dependency 'jsonapi-serializer', '~> 2.1'
  s.add_dependency 'rabl', '~> 0.14', '>= 0.14.2'
  # s.add_dependency 'responders'

end
