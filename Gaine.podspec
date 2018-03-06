#
# Be sure to run `pod lib lint Gaine.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Gaine'
  s.version          = '0.1.0'
  s.summary          = 'A convenient way to initialize value in Swift.'
  s.homepage         = 'https://github.com/Maru-zhang/Gaine'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Maru-zhang' => 'zhangbinhui@souche.com' }
  s.source           = { :git => 'https://github.com/Maru-zhang/Gaine.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'Gaine/Classes/**/*'
  s.swift_version = '4.0'
end
