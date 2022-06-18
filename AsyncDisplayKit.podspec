Pod::Spec.new do |spec|
  spec.name         = 'AsyncDisplayKit'
  spec.version      = '1.0.0'
  spec.license      =  { :type => 'Apache 2',  }
  spec.homepage     = 'http://texturegroup.org'
  spec.authors      = { 'tangtao' => '412145540@qq.com' }
  spec.summary      = 'Smooth asynchronous user interfaces for iOS apps.'
  spec.source       = { :git => 'https://github.com/tangtaoit/AsyncDisplayKit.git', :tag => spec.version.to_s }
  spec.module_name  = 'AsyncDisplayKit'
  spec.header_dir   = 'AsyncDisplayKit'

  spec.documentation_url = 'http://texturegroup.org/appledoc/'

  spec.ios.deployment_target = '9.0'
  spec.tvos.deployment_target = '9.0'

  spec.source_files = 'Source/**/*'
  spec.private_header_files = 'Source/*.h'
  spec.public_header_files='Source/PublicHeaders/AsyncDisplayKit/*.h'
  spec.frameworks='Foundation','UIKit','QuartzCore','CoreMedia','CoreText','CoreGraphics'
end
