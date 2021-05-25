#
# Be sure to run `pod lib lint UMBridge.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UMBridge'
  s.version          = '0.2.0'
  s.summary          = 'A short description of UMBridge.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/SunChJ/UMBridge'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'SamsonCJ' => 'cs3507529000@gmail.com' }
  s.source           = { :git => 'https://github.com/SunChJ/UMBridge.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_versions = "5.0"
  s.source_files = 'UMBridge/Classes/**/*'
  
  # s.resource_bundles = {
  #   'UMBridge' => ['UMBridge/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.static_framework = true
   s.preserve_paths = ['UMBridge/Module/module.modulemap', 'UMBridge/Module/BridgeHeader.h']
   s.pod_target_xcconfig = {
     # 路径根据实际情况进行引用，必须保证路径是正确的
     'SWIFT_INCLUDE_PATHS' => ['$(PODS_ROOT)/UMBridge/Module', '$(PODS_TARGET_SRCROOT)/UMBridge/Module']
   }
   s.dependency 'UMCommon'
   s.dependency 'UMDevice'
   s.dependency 'UMAPM'
end
