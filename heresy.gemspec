# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heresy/version'

Gem::Specification.new do |spec|
  spec.name          = "heresy"
  spec.version       = Heresy::VERSION
  spec.authors       = ["Marie Markwell"]
  spec.email         = ["me@marie.so"]

  spec.summary       = %q{An alternative standard library with no intent of compatibility.}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/ruby-heresy"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end