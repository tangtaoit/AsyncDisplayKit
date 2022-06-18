Pod::Spec.new do |spec|
  spec.name         = 'AsyncDisplayKit'
  spec.version      = '1.0.0'
  spec.license      =  { :type => 'Apache 2',  }
  spec.homepage     = 'http://texturegroup.org'
  spec.authors      = { 'tangtao' => '412145540@qq.com' }
  spec.summary      = 'Smooth asynchronous user interfaces for iOS apps.'
  spec.source       = { :git => 'https://github.com/tangtaoit/AsyncDisplayKit.git' }
  spec.module_name  = 'AsyncDisplayKit'
  spec.header_dir   = 'AsyncDisplayKit'

  spec.documentation_url = 'http://texturegroup.org/appledoc/'

  spec.ios.deployment_target = '10.0'
  spec.platform     = :ios, '10.0'
  spec.swift_version = '5.0'
  spec.libraries='c++'
  # spec.compiler_flags="-fno-exceptions"
  spec.source_files = 'Source/**/*'
  
  spec.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
      'DEFINES_MODULE' => 'YES'
  }
  spec.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) MINIMAL_ASDK=1' }

  spec.private_header_files = 'Source/*.h'
  spec.public_header_files='Source/PublicHeaders/AsyncDisplayKit/*.h'
  spec.frameworks='Foundation','UIKit','QuartzCore','CoreMedia','CoreText','CoreGraphics'
end
