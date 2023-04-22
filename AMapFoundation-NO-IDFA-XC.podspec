#
# Be sure to run `pod lib lint AMapFoundation-NO-IDFA-in-xcframework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AMapFoundation-NO-IDFA-XC'
  s.version          = '1.0.4'
  s.summary          = 'A xcframework based AMapFoundation-NO-IDFA Support ARM64 simulator'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  This pod is built for AMapFoundation-NO-IDFA
    DESC
  s.homepage         = 'www.google.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :text => <<-LICENSE
                        Copyright (c) 2023 souhanaqiao <souhanaqiao@gmail.com>

                        Permission is hereby granted, free of charge, to any person obtaining a copy
                        of this software and associated documentation files (the "Software"), to deal
                        in the Software without restriction, including without limitation the rights
                        to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
                        copies of the Software, and to permit persons to whom the Software is
                        furnished to do so, subject to the following conditions:
                        
                        The above copyright notice and this permission notice shall be included in
                        all copies or substantial portions of the Software.
                        
                        THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
                        IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
                        FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
                        AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
                        LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
                        OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
                        THE SOFTWARE.
                        LICENSE
                       }
  s.author           = { 'souahaqiao' => 'souhanaqiao@gmail.com' }
  # s.source           = { :path => './output/AMapFoundation-NO-IDFA.zip' }
  s.source           = { :http => 'https://github.com/SouHanaQiao/AMapFoundation-NO-IDFA-XC/releases/download/1.0.4/AMapFoundation-NO-IDFA.zip' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  platform = :ios
  
  s.ios.deployment_target = '9.0'

  s.vendored_frameworks = 'output/AMapFoundation-NO-IDFA/AMapFoundationKit.xcframework'

  s.frameworks = 'UIKit', 'Foundation', 'CFNetwork', 'SystemConfiguration', 'QuartzCore', 'CoreGraphics', 'CoreMotion', 'CoreTelephony', 'GLKit'
  s.libraries = 'c++', 'z'
  
end
