Pod::Spec.new do |spec|
  spec.name = "WXPiwikTracker"
  spec.version = "3.3.3"
  spec.summary = "A Piwik tracker written in Objective-C for iOS and OSX apps."
  spec.homepage = "https://github.com/matomo-org/matomo-sdk-ios"
  spec.license = { :type => "MIT", :file => "LICENSE.md" }
  spec.author = { "Mattias Levin" => "mattias.levin@gmail.com" }
  spec.source = { :git => "https://github.com/LisonFan/matomo-sdk-ios", :tag => "v#{spec.version}" }
  spec.ios.deployment_target = "7.0"
  spec.osx.deployment_target = "10.8"
  spec.requires_arc = true
  spec.default_subspecs = "Core"

  spec.subspec "Core" do |core|
    core.source_files = "PiwikTracker/*.{h,m}"
    core.osx.exclude_files = "PiwikTracker/PiwikTrackedViewController.{h,m}"
    core.resources = "PiwikTracker/piwiktracker.xcdatamodeld"
    core.preserve_paths = "PiwikTracker/piwiktracker.xcdatamodeld"
    core.ios.frameworks = "Foundation", "UIKit", "CoreData", "CoreLocation", "CoreGraphics"
    core.osx.frameworks = "Foundation", "Cocoa", "CoreData", "CoreGraphics"
  end
end
