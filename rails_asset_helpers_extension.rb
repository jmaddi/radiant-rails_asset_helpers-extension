require 'rails_asset_helpers'
require 'rails_asset_helpers/asset_tags'

class RailsAssetHelpersExtension < Radiant::Extension
  version     RadiantRailsAssetHelpersExtension::VERSION
  description RadiantRailsAssetHelpersExtension::DESCRIPTION
  url         RadiantRailsAssetHelpersExtension::URL

  def activate
    Page.send :include, RailsAssetHelpers::AssetTags		
  end
end
