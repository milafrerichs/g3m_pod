Pod::Spec.new do |s|
  s.name             = "g3m"
  s.version          = "0.1.0"
  s.summary          = "The multiplatform advanced visualization framewor"
  s.description      = <<-DESC
                       * The multiplatform advanced visualization framework
                       DESC
  s.homepage         = "http://www.glob3mobile.com/"
  s.license          = 'MIT'
  s.author           = { "Mila Frerichs" => "mila.frerichs@gmail.com" }
  s.source           = { :git => "https://github.com/milafrerichs/g3m.git", :tag => "v0.1.0" }
  s.social_media_url = 'https://twitter.com/NAME'

  s.platform     = :ios, '7.1'
  s.ios.deployment_target = '5.1'
  s.requires_arc = true

  s.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'C_CODE',  'OTHER_LDFLAGS' => '-lObjC' }

  s.source_files = 'Classes/ios/{Commons,Specific}/**/*.{hpp,cpp,h,mm,m,c}','Classes/ios/*.{h,m}'

  s.resources = 'Classes/ios/Resources/**/*.*'

  s.header_mappings_dir = 'Commons'

  s.ios.exclude_files = 'Classes/osx'
  # s.public_header_files = 'Classes/**/*.h'
  s.frameworks = 'QuartzCore', 'CoreGraphics', 'CFNetwork', 'Foundation', 'GLKit', 'Security'
  s.ios.library = 'icucore'
end

