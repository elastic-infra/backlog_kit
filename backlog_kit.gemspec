lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'backlog_kit/version'

Gem::Specification.new do |spec|
  spec.name          = 'backlog_kit'
  spec.version       = BacklogKit::VERSION
  spec.authors       = ['Elastic Infra']

  spec.summary       = %q{Wrapper for the Backlog API v2.}
  spec.description   = %q{Client library for the Nulab's Backlog API version 2 written in Ruby.}
  spec.homepage      = 'https://github.com/elastic-infra/backlog_kit'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*', 'README.md', 'LICENSE.md', 'CHANGELOG.md']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.7'

  spec.add_runtime_dependency 'activesupport', '>= 4.2.7.1'
  spec.add_runtime_dependency 'addressable', '~> 2.7'
  spec.add_runtime_dependency 'faraday', '~> 2.0'
  spec.add_runtime_dependency 'faraday-multipart', '~> 1.0'
end
