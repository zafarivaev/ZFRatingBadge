Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '11.0'
s.name = "ZFRatingBadge"
s.summary = "ZFRatingBadge shows a customized badge with a rating."
s.requires_arc = true

# 2
s.version = "1.0.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Zafar Ivaev" => "z.ivaev@mail.ru" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/zafarivaev/ZFRatingBadge"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/zafarivaev/ZFRatingBadge.git",
             :tag => "#{s.version}" }

# 7
s.framework = "UIKit"
s.dependency 'SnapKit'

# 8
s.source_files = "ZFRatingBadge/**/*.{swift}"

# 9
s.resources = "ZFRatingBadge/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

# 10
s.swift_version = "5.0"

end
