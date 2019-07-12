require 'json'
Pod::Spec.new do |s|
  package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

  s.name         = "RCTToast"
  s.version      = package['version']
  s.summary      = package['description']
  s.homepage      = "https://github.com/banye/react-native-exit-app#readme"
  s.license      = "MIT"
  s.author             = { "" => "" }
  s.platform     = :ios, "9.0"
  s.framework    = 'UIKit'
  s.source       = { :git => "https://github.com/banye/react-native-exit-app.git"}
  s.source_files  = "ios/**/*.{h,m}"
  s.dependency 'React'
end
