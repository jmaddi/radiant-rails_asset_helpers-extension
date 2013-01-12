require "rails2_asset_pipeline/view_helpers"

module RailsAssetPipeline::AssetTags      
  include Radiant::Taggable
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::AssetTagHelper
  include ActionView::Helpers::JavaScriptHelper
  include Rails2AssetPipeline::ViewHelpers
  
  desc %{
    Include pipeline-based stylesheets.

    *Usage:*
    <pre><code><r:stylesheet_link_tag sources="name" [other options] /></code></pre>
  }
  tag 'stylesheet_link_tag' do |tag|
    options = tag.attr || {}    
    sources = options.delete('sources')
    sources ||= options.delete('source')

    stylesheet_link_tag(sources, options)
  end

  desc %{
    Include pipeline-based javascripts.

    *Usage:*
    <pre><code><r:javascript_include_tag sources="name" [other options] /></code></pre>
  }
  tag 'javascript_include_tag' do |tag|
    options = tag.attr || {}    
    sources = options.delete('sources')
    sources ||= options.delete('source')

    javascript_include_tag(sources, options)
  end


  desc %{ Renders and image tag with asset pipeline compatibility }
  tag 'image_tag' do |tag|
   options = tag.attr || {}
   source = options["source"]    
   options.delete("source")        

   image_tag(source, options)
  end
  
  desc %{ Renders an asset path }
  tag 'asset_path' do |tag|
    options = tag.attr || {}
    source = options["source"]    
    options.delete("source")        
    asset_path(source)
  end
  
end
