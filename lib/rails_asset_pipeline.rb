require "rails2_asset_pipeline"
require "radiant-rails_asset_pipeline-extension"

Rails2AssetPipeline.setup do |env|
  Dir[Rails.root.join("radiant", "assets", "*")].each do |folder|
    env.append_path folder
  end
end

module RailsAssetPipeline
end
