#
# Be sure to run `pod lib lint YYTextJMLRS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name         = 'YYTextJMLRS'
  s.summary      = 'Powerful text framework for iOS to display and edit rich text. fork from ibireme'
  s.version      = '1.0.7'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'ibireme' => 'ibireme@gmail.com', 'aioser' => 'junchen.liu@jiamiantech.com' }
  s.social_media_url = 'http://blog.ibireme.com'
  s.homepage     = 'https://github.com/ibireme/YYText'
  s.platform     = :ios, '6.0'
  s.ios.deployment_target = '6.0'
  s.source       = { :git => 'git@github.com:aioser/YYTextJMLRS.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'YYTextJMLRS/**/*.{h,m}'
  s.public_header_files = 'YYTextJMLRS/**/*.{h}'
  
  s.frameworks = 'UIKit', 'CoreFoundation','CoreText', 'QuartzCore', 'Accelerate', 'MobileCoreServices'
end
