Pod::Spec.new do |s|
  s.name             = 'AMapFoundation-NO-IDFA-XC'
  s.version          = '1.0.9'
  s.summary          = 'A xcframework based AMapFoundation-NO-IDFA Support ARM64 simulator'

  s.description      = <<-DESC
  This pod is built for AMapFoundation-NO-IDFA, see: https://github.com/SouHanaQiao/AMapFoundation-NO-IDFA-XC.git
    DESC
  s.homepage         = 'https://github.com/SouHanaQiao/AMapFoundation-NO-IDFA-XC'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'souahaqiao' => 'wangqinqian@126.com' }
  # s.source           = { :path => './output/AMapFoundation-NO-IDFA.zip' }
  s.source           = { :http => 'https://github.com/SouHanaQiao/AMapFoundation-NO-IDFA-XC/releases/download/1.0.9/AMapFoundation-NO-IDFA.zip' }

  platform = :ios
  
  # s.ios.deployment_target = '9.0'
  s.ios.deployment_target = '11.0'

  s.vendored_frameworks = 'output/AMapFoundation-NO-IDFA/AMapFoundationKit.xcframework'

  s.frameworks = 'UIKit', 'Foundation', 'CFNetwork', 'SystemConfiguration', 'QuartzCore', 'CoreGraphics', 'CoreMotion', 'CoreTelephony', 'GLKit'
  s.libraries = 'c++', 'z'
  
end