Pod::Spec.new do |s|
  s.name         = 'LFCategory'
  s.summary      = 'A collection of iOS components.'
  s.version      = '1.0.0'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'wangzhiwei' => 'dreamforday@sina.com' }
  s.homepage     = 'https://github.com/dreamforday'
  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.source       = { :git => 'git@github.com:dreamforday/MyCategory.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = ‘LFCategory/*.{h,m}’
  s.public_header_files = ‘LFCategory/*.{h}’

  s.libraries = 'z'

end
