Pod::Spec.new do |s|
  s.name = 'Fileable'
  s.version = '1.1'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.summary = 'Unix command like file management library for Swift.'
  s.description      = <<-DESC
  Unix command like and objective file management library for Swift. 
                       DESC
  s.homepage         = 'https://github.com/shotastage/Fileable.swift/'
  s.authors = { 'Shota Shimazu' => 'hornet.live.mf@gmail.com' }
  s.source = { :git => 'https://github.com/shotastage/Fileable.swift.git', :tag => s.version }
  s.ios.deployment_target = '10.0'
  s.source_files = 'Sources/**/*.{h,m,swift}'
end
