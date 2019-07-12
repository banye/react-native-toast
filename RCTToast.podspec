require 'json'
Pod::Spec.new do |s|
  package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"
  s.framework    = 'UIKit'
  s.source       = { :git => "https://github.com/banye/react-native-exit-app.git", :tag => "v#{s.version}"}
  s.source_files  = "ios/**/*.{h,m}"
  s.dependency 'React'
end
