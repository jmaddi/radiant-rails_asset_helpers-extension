# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-rails_asset_pipeline-extension"

Gem::Specification.new do |s|
  s.name        = "radiant-rails_asset_pipeline-extension"
  s.version     = RadiantRailsAssetPipelineExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = RadiantRailsAssetPipelineExtension::AUTHORS
  s.homepage    = RadiantRailsAssetPipelineExtension::URL
  s.summary     = RadiantRailsAssetPipelineExtension::SUMMARY
  s.description = RadiantRailsAssetPipelineExtension::DESCRIPTION

  # Define gem dependencies here.
  # Don't include a dependency on radiant itself: it causes problems when radiant is in vendor/radiant.
	s.add_dependency "rails2_asset_pipeline"

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
