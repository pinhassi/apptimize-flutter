#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint apptimize_flutter.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'apptimize_flutter'
  s.version          = '2.0.1'
  s.summary          = 'Apptimize SDK wrapper for iOS'
  s.description      = <<-DESC
  Apptimize SDK wrapper for iOS.
                       DESC
  s.homepage         = 'https://apptimize.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Apptimize' => 'support@apptimize.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'Apptimize', '~> 3'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
