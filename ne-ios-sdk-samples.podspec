Pod::Spec.new do |s|
  s.name             = 'ne-ios-sdk-samples'
  s.version          = '0.2.0'
  s.summary          = 'this is sample project.'

  s.homepage         = 'https://github.com/nest-egg/ne-ios-sdk-samples'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nestegg' => 'some@gmail.com' }
  s.source           = { :git => 'https://github.com/nest-egg/ne-ios-sdk-samples.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.platform = :ios, "12.0"
  s.requires_arc = true
  s.public_header_files = 'ne-ios-sdk-samples/*.framework/Headers/*.h'
  s.source_files        = 'ne-ios-sdk-samples/*.framework/Headers/*.h'
  s.vendored_frameworks = 'ne-ios-sdk-samples/*.framework'
end
