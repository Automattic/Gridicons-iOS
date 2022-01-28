# frozen_string_literal: true

Pod::Spec.new do |s|
  s.name          = 'Gridicons'
  s.version       = '1.2.0'

  s.summary       = 'Gridicons is a tiny framework which generates Gridicon images at any resolution.'
  s.description   = <<-DESC
                    This framework contains a pack of icons – mainly ones used in the WordPress apps –
                    that can be reused and scaled at any resolution.
  DESC

  s.homepage      = 'https://github.com/Automattic/Gridicons-iOS'
  s.license       = { type: 'GPLv2', file: 'LICENSE.md' }
  s.author        = { 'Automattic' => 'mobile@automattic.com' }
  s.social_media_url = 'https://twitter.com/automattic'

  s.platform      = :ios, '11.0'
  s.swift_version = '5.0'

  s.source        = { git: 'https://github.com/Automattic/Gridicons-iOS.git', tag: s.version.to_s }
  s.source_files  = 'Gridicons/Gridicons/**/*.swift'
  s.resource_bundles = {
    GridiconsAssets: [
      'Gridicons/Gridicons/*.{xcassets}'
    ]
  }
end
