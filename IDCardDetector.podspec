#
# Be sure to run `pod lib lint IDCardDetector.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IDCardDetector'
  s.version          = '0.1.0'
  s.swift_version = '4.2'
  s.summary          = 'IDCardDetector is a fast and simple OCR library written in Swift..'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
"IDCardDetector is a delightful component for quick and easy scanning of ID cards and drivers licenses."
                       DESC

  s.homepage         = 'https://github.com/VandanaPansuria/IDCardDetector'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'VandanaPansuria' => 'vandanapansuria@gmail.com' }
  s.source           = { :git => 'https://github.com/VandanaPansuria/IDCardDetector.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'IDCardDetector/Classes/**/*'
  
  # s.resource_bundles = {
  #   'IDCardDetector' => ['IDCardDetector/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'Alamofire'
  s.dependency 'SwiftyJSON'
  s.dependency 'IQKeyboardManagerSwift'
  s.dependency 'NVActivityIndicatorView'
  # s.dependency 'FaceCropper'
end
