Pod::Spec.new do |s|
  s.name             = 'AMapFoundation-NO-IDFA-XC'
  s.version          = '1.8.3'
  s.summary          = 'A xcframework based AMapFoundation-NO-IDFA Support ARM64 simulator'

  s.description      = <<-DESC
  This pod is built for AMapFoundation-NO-IDFA, see: https://github.com/SouHanaQiao/AMapFoundation-NO-IDFA-XC.git
    DESC
  s.homepage         = 'https://github.com/SouHanaQiao/AMapFoundation-NO-IDFA-XC'
  s.license          = { :type => 'MIT', :text => <<-LICENSE
    MIT License

    Copyright (c) 2023 葬花桥

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.

  LICENSE
  }
  s.author           = { 'souahaqiao' => 'wangqinqian@126.com' }
  # s.source           = { :path => './output/AMapFoundation-NO-IDFA.zip' }
  s.source           = { :http => 'https://github.com/SouHanaQiao/AMapFoundation-NO-IDFA-XC/releases/download/1.8.2/AMapFoundation-NO-IDFA.zip' }

  platform = :ios, '11.0'
  s.ios.deployment_target = '11.0'

  s.vendored_frameworks = 'AMapFoundationKit.xcframework'

  s.frameworks = 'Security', 'SystemConfiguration', 'CoreLocation', 'CoreTelephony'
  s.libraries = 'c++', 'z'

  s.cocoapods_version = '>= 1.12.1'
end
