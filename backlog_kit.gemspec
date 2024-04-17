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

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.7'

  spec.add_runtime_dependency 'activesupport', '>= 4.2.7.1'
  spec.add_runtime_dependency 'faraday', '~> 2.0'
  spec.add_runtime_dependency 'faraday-multipart', '~> 1.0'
  spec.add_runtime_dependency 'addressable', '~> 2.7'
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'multi_json', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.8'
  spec.add_development_dependency 'rubocop', '~> 1.63.0'
  spec.add_development_dependency 'rubocop-packaging', '~> 0.5.2'
  spec.add_development_dependency 'rubocop-performance', '~> 1.21.0'
  spec.add_development_dependency 'simplecov', '~> 0.16'
  spec.add_development_dependency 'vcr', '~> 6.0'
  spec.add_development_dependency 'webmock', '~> 3.5'
  spec.add_development_dependency 'yard', '~> 0.9.18'
end
