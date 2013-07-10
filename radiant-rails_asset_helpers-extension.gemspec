# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-rails_asset_helpers-extension"

Gem::Specification.new do |s|
  s.name        = "radiant-rails_asset_helpers-extension"
  s.version     = RadiantRailsAssetHelpersExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = RadiantRailsAssetHelpersExtension::AUTHORS
  s.homepage    = RadiantRailsAssetHelpersExtension::URL
  s.summary     = RadiantRailsAssetHelpersExtension::SUMMARY
  s.description = RadiantRailsAssetHelpersExtension::DESCRIPTION

  ignores = if File.exist?('.gitignore')
    File.read('.gitignore').split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end
  s.files         = Dir['**/*'] - ignores
  s.test_files    = Dir['test/**/*','spec/**/*','features/**/*'] - ignores
  # s.executables   = Dir['bin/*'] - ignores
  s.require_paths = ["lib"]
end
