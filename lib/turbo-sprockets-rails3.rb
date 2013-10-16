require 'sprockets/railtie'

module Sprockets
  # Assets
  autoload :UnprocessedAsset,      "sprockets/unprocessed_asset"
  autoload :AssetWithDependencies, "sprockets/asset_with_dependencies"
end

require 'sprockets'
require 'sass-rails'
['../turbo-sprockets/sprockets_overrides/*.rb',
 '../turbo-sprockets/sass_rails_overrides/**/*.rb'].map do |files|
  Dir[File.expand_path(files, __FILE__)].each do |f|
    require f
  end
end

require 'turbo-sprockets/railtie'
