Pod::Spec.new do |s|
  s.name = 'Fileable'
  s.version = '1.0.8'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.summary = 'Unix command like file management library for Swift.'
  s.description      = <<-DESC
  Unix command like and objective file management library for Swift. 
                       DESC

  s.homepage         = 'https://github.com/shotastage/Fileable'
  s.authors = { 'Shota Shimazu' => 'hornet.live.mf@gmail.com' }
  s.source = { :git => 'https://github.com/shotastage/Fileable.git', :tag => s.version }
  s.ios.deployment_target = '10.0'
  s.source_files = 'Source/*.{h,m,swift}'
end
