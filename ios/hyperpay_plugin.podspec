#
Pod::Spec.new do |s|
  s.name             = 'hyperpay_plugin'
  s.version          = '0.0.6'
  s.summary          = 'A new Flutter project.'
  s.description      = <<-DESC
A new Flutter project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # HyperPay Mobile SDK v7.11.0 — vendored directly (no CocoaPods distribution for this version)
  # ipworks3ds_sdk.xcframework is the production (deploy) 3DS SDK, renamed to match its internal binary name.
  s.vendored_frameworks = [
    'Frameworks/OPPWAMobile.xcframework',
    'Frameworks/ipworks3ds_sdk.xcframework'
  ]

 end