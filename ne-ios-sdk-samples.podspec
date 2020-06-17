Pod::Spec.new do |s|
  s.name             = 'ne-ios-sdk-samples'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ne-ios-sdk-samples.'

  s.homepage         = 'https://github.com/nest-egg/ne-ios-sdk-samples'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nestegg' => 'some@gmail.com' }
  s.source           = { :git => 'https://github.com/nest-egg/ne-ios-sdk-samples.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.platform = :ios
  s.requires_arc = true
  s.public_header_files = 'ne-ios-sdk-samples.embeddedframework/*.framework/Headers/*.h'
  s.source_files        = 'ne-ios-sdk-samples/*.framework/Headers/*.h'
  s.vendored_frameworks = 'ne-ios-sdk-samples/*.framework'
  s.resource            = 'ne-ios-sdk-samples/Resources/*.storyboardc'
end
