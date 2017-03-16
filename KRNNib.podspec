Pod::Spec.new do |s|

  s.name         = "KRNNib"
  s.version      = "0.0.1"
  s.summary      = "KRNNib is a simple class that helps your load nibs and instantiate views from nibs"

  s.homepage     = "https://github.com/ulian-onua/KRNNib"

  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author              = { "Julian Drapaylo" => "ulian.onua@gmail.com" }
  #s.social_media_url   = "http://www.linkedin.com/in/julian-drapaylo"


  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/ulian-onua/KRNNib.git", :tag => "0.0.1" }


  s.source_files  = "KRNNib/*.{h,m}"
  s.public_header_files = "KRNNib/*.h"

  s.frameworks = "Foundation", "UIKit"
  s.requires_arc = true

end
