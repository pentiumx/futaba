# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'futaba/version'

Gem::Specification.new do |spec|
  spec.name          = "futaba"
  spec.version       = Futaba::VERSION
  spec.authors       = ["Kosuke Asami"]
  spec.email         = ["tfortress58@gmail.com"]
  spec.description   = %q{A futaba-chan client library for Ruby}
  spec.summary       = %q{A futaba-chan client library for Ruby}
  spec.homepage      = "https://github.com/co-me/futaba"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "nokogiri"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "test-unit"
  spec.add_development_dependency "test-unit-rr"
end
