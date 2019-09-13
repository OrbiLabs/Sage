Pod::Spec.new do |s|
    s.name                      = "Sage"
    s.version                   = "2.5.3"
    s.summary                   = "A cross-platform chess library for Swift."
    s.homepage                  = "https://github.com/nvzqz/#{s.name}"
    s.license                   = { :type => "Apache License, Version 2.0", :file => "LICENSE.txt" }
    s.author                    = "Nikolai Vazquez"
    s.social_media_url          = "https://twitter.com/nikolaivazquez"
    s.ios.deployment_target     = "8.0"
    s.osx.deployment_target     = "10.9"
    s.watchos.deployment_target = '2.0'
    s.tvos.deployment_target    = '9.0'
    s.source                    = { :git => "https://github.com/nvzqz/#{s.name}.git", :tag => "v#{s.version}" }
    s.source_files              = "Sources/*.swift"
end
