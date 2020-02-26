
Pod::Spec.new do |s|
  s.name             = 'LZSwiftDelegate'
  s.version          = '0.0.1'
  s.summary          = 'LZSwiftDelegate.'
  
  s.description      = <<-DESC
                Unite Delegate Manager
                       DESC

  s.homepage         = 'https://github.com/chenjianlei/LZSwiftDelegate'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chenjianlei' => 'woshixiaolei@qq.com' }
  s.source           = { :git => 'https://github.com/chenjianlei/LZSwiftDelegate.git', :tag => s.version.to_s }
  s.swift_version = "4.2"
  s.swift_versions = ['4.0', '4.2', '5.0']
  s.ios.deployment_target = '8.0'

  s.source_files = 'LZSwiftDelegate/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LZSwiftDelegate' => ['LZSwiftDelegate/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
#   s.frameworks = 'UIKit', 'MapKit'
   s.framework = 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
