Pod::Spec.new do |s|
  s.name         = 'LFCategory'
  s.summary      = 'A collection of iOS components.'
  s.version      = '1.0.1'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'wangzhiwei' => 'dreamforday@sina.com' }
  s.social_media_url = 'http://blog.ibireme.com'
  s.homepage     = 'https://github.com/dreamforday'
  s.platform     = :ios, '6.0'
  s.ios.deployment_target = '6.0'
  s.source       = { :git => 'git@github.com:dreamforday/MyCategory.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'LFCategory/**/*.{h,m}'
  s.public_header_files = 'LFCategory/**/*.{h}'

  s.libraries = 'z'
  s.dependency 'SDWebImage','~>3.7.5’

end
