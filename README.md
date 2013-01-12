# Rails Asset Pipeline

Radiant extension adding extra tags for Rails3-like asset pipeline integration.
Based on the Michael Grosser's backport of asset pipeline functionality:
https://github.com/grosser/rails2_asset_pipeline

## Installation

1. Add to your Gemfile:

    gem "radiant-rails_asset_pipeline-extension"

2. If you want dynamic assets in development (and you do want them) - add
config.ru from "rails2_asset_pipeline":https://github.com/grosser/rails2_asset_pipeline#dynamic-assets-for-development
to the root of your application.

Asset files can be stored in `app/assets`, or `radiant/assets` -
handy if you're also using
"file_system_resources extension":https://github.com/saturnflyer/radiant-file-system-resources-extension
with Radiant.

## Usage

1. Stylesheets:

    <r:stylesheet_link_tag source="application" />

2. Javascripts:

    <r:javascript_include_tag source="application" />

3. Images:

      <r:image_tag source="image.png" />

4. Asset path:

      <r:asset_path source="application.css" />

## Tasks

All tasks from rails2_asset_pipeline are available for you. For example, if
you want to precompile all assets:

    rake assets:precompile

to see all available tasks:

    rake -T assets:

