#
# Be sure to run `pod lib lint ICP_Commons_iOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ICP_Commons_iOS'
  s.version          = '0.6.0'
  s.summary          = 'Bienvenidos a la increible y fantasuosa version para iOS del amigo y vecino ICP Commons!!!'
  
  s.swift_version    = '4.1'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Versión para iOS de la increible y fantasuosa librería ICP Commons.
Bienvenidos a la increible y fantasuosa version para iOS del amigo y vecino ICP Commons!!!
                       DESC

  s.homepage         = 'https://github.com/icpmoviles/ICP_Commons_iOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rufius97' => '41873918+rufius97@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/icpmoviles/ICP_Commons_iOS.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'ICP_Commons_iOS/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ICP_Commons_iOS' => ['ICP_Commons_iOS/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
