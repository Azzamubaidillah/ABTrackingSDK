# ABTrackingSDK.podspec

Pod::Spec.new do |spec|
  spec.name         = "ABTrackingSDK"
  spec.version      = "1.0.0"
  spec.summary      = "A brief description of ABTrackingSDK."
  spec.description  = "A longer description of ABTrackingSDK."

  spec.homepage     = "https://github.com/Azzamubaidillah/ABTrackingSDK"
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "Azzam Ubaidillah" => "azzamu.ubaidillah05@gmail.com" }
  spec.platform     = :ios, "17.0"

  spec.source       = { :git => "https://github.com/Azzamubaidillah/ABTrackingSDK.git", :tag => "1.0.0" }

  spec.source_files  = "Sources/**/*.{h,m,swift}"
end
