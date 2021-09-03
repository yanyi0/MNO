#
# Be sure to run `pod lib lint MNO.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MNO'
  s.version          = '0.0.1'
  s.summary          = 'A short description of MNO.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '测试pod源码和静态库之间进行切换，不上传.a文件'

  s.homepage         = 'https://github.com/yanyi0/MNO'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yanyi0' => '785144130@qq.com' }
  s.source           = { :git => 'https://github.com/yanyi0/MNO.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'MNO/Classes/**/*'

  if s.version.to_s.include?'Binary'    
    puts '-------------------------------------------------------------------'
    puts 'Notice:MNO is binary now'
    puts '-------------------------------------------------------------------'
    s.prepare_command = '/bin/bash build_lib.sh'
    s.source_files = 'Pod/Products/include/**'
    s.ios.vendored_libraries = 'Pod/Products/lib/*.a'
    s.public_header_files = 'Pod/Products/include/*.h'    
  else
    puts '-------------------------------------------------------------------'
    puts 'Notice:MNO is source code now'
    puts '-------------------------------------------------------------------'
    s.source_files = 'MNO/Classes/**/*'
  end
  
  # s.resource_bundles = {
  #   'MNO' => ['MNO/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
