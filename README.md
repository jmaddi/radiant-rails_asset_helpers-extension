# Rails Asset Helpers for Radiant CMS

Radiant extension adding extra tags for Rails3-like asset helpers integration.

For integration with fast.ly.

## Installation

1. Add to your Gemfile:

    ```
    gem "radiant-rails_asset_helpers-extension"
    ```
## Usage

1. Stylesheets:

    ```
    <r:stylesheet_link_tag source="application" />
    ```

2. Javascripts:

    ```
    <r:javascript_include_tag source="application" />
    ```

3. Images:

    ```
    <r:image_tag source="image.png" />
    ```

4. Asset path:

    ```
    <r:asset_path source="application.css" />
    ```
