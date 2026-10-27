Pod::Spec.new do |s|
  s.name             = 'APIVerveQueryStringBuilder'
  s.version          = '1.2.3'
  s.summary          = 'Query String Builder converts JSON objects into properly formatted URL query strings with optional encoding.'
  s.description      = <<-'DESC'
Query String Builder converts JSON objects into properly formatted URL query strings with optional encoding.

This iOS/macOS SDK provides a convenient way to access the Query String Builder from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/querystringbuilder?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/querystringbuilder-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveQueryStringBuilder/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
