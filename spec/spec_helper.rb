require "bundler"

Bundler.require(:default, :test, :development)

RSpec.configure do |config|
  config.expect_with :rspec
end
