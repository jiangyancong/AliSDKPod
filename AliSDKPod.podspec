Pod::Spec.new do |s|


  s.name         = "AliSDKPod"
  s.version      = "0.1"
  s.summary      = "AliSDKPod"

  s.description  = "AliSDKPodAliSDKPodAliSDKPod"
                  
  s.homepage     = "https://github.com/jiangyancong/NMPay"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "StanleyJiang" => "jiangyancong@gmail.com" }

  s.platform     = :ios, "7.1"

  s.source = {:git => "https://github.com/jiangyancong/AliSDKPod.git"}
  
  s.framework = "Security","SystemConfiguration","CoreGraphics","CoreTelephony","CoreMotion","CFNetwork","QuartzCore","CoreText"

  s.libraries = "iconv","sqlite3","stdc++","z","c++"

  s.requires_arc = true
  
  s.subspec 'AliPay' do |ali|
     ali.source_files = 'AlixPay/2016_04_28/**/*.{h,m}'
     ali.header_mappings_dir = 'AlixPay/2016_04_28/openssl'
     ali.resource = 'AlixPay/2016_04_28/AlipaySDK.bundle'
     ali.vendored_libraries = "AlixPay/2016_04_28/libcrypto.a","AlixPay/2016_04_28/libssl.a"
     ali.vendored_frameworks = "AlixPay/2016_04_28/AliPaySDK.framework"
  end

end






