#
# Be sure to run `pod lib lint FileKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FileKit'
  s.version          = '0.1.0'
  s.summary          = 'A unix-command like file manager written in Swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://git.happinesslab.xyz/PINNA/FileKit'
  s.license          = { :type => 'ISC', :file => 'LICENSE' }
  s.author           = { 'shotastage' => 'hornet.live.mf@gmail.com' }
  s.source           = { :git => 'https://git.happinesslab.xyz/PINNA/FileKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'Sources/**/*'
end
