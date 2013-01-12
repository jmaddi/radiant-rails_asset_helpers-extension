require 'rails_asset_pipeline'
require 'rails_asset_pipeline/asset_tags'

class RailsAssetPipelineExtension < Radiant::Extension
  version     RadiantRailsAssetPipelineExtension::VERSION
  description RadiantRailsAssetPipelineExtension::DESCRIPTION
  url         RadiantRailsAssetPipelineExtension::URL

  def activate
    Page.send :include, RailsAssetPipeline::AssetTags		
  end
end
