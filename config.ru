require 'rubygems'
require 'bundler'
Bundler.setup

# Rack Dispatcher
#
# we need to protect against multiple includes of the Rails environment (trust me)
require './config/environment' if !defined?(Rails) || !Rails.initialized?

Rails2AssetPipeline.config_ru(self)
Rails2AssetPipeline.setup do |env|
  Dir[Rails.root.join("radiant", "assets", "*")].each do |folder|
    env.append_path folder
  end
end

map '/' do
  use Rails::Rack::LogTailer unless Rails.env.test?
  # use Rails::Rack::Debugger unless Rails.env.test?
  use Rails::Rack::Static
  run ActionController::Dispatcher.new
end
