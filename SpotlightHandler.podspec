#
# Be sure to run `pod lib lint SpotlightHandler.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SpotlightHandler"
  s.version          = "0.1.0"
  s.summary          = "A simple way to index your application"

  s.description      = "A simple way to index your application making it visible on Spotlight Search"

  s.homepage         = "https://github.com/renatosarro/SpotlightHandler"
  s.license          = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author           = { "Renato Matos" => "renatorsarro@gmail.com" }
  s.source           = { :git => "https://github.com/renatosarro/SpotlightHandler.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/rmatos_'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/SpotlightUtils/**/**/*.{h,m}'
  s.resource_bundles = {
    'SpotlightHandler' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/SpotlightUtils/**/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
