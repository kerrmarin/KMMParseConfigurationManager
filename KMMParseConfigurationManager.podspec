#
# Be sure to run `pod lib lint KMMParseConfigurationManager.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "KMMParseConfigurationManager"
  s.version          = "1.0.1"
  s.summary          = "A wrapper for PFConfig that allows the use of local configuration."
  s.description      = <<-DESC
                        A configuration manager that integrates with Parse to provide a local backup of configuration variables in case Parse is unavailable when you first run your app.
                       DESC
  s.homepage         = "https://github.com/kerrmarin/KMMParseConfigurationManager"
  s.license          = 'MIT'
  s.author           = { "Kerr Marin Miller" => "kerr@kerrmarin.com" }
  s.source           = { :git => "https://github.com/kerrmarin/KMMParseConfigurationManager.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/kerrmarin'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'KMMParseConfigurationManager' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'Parse', '~> 1.6'
end
