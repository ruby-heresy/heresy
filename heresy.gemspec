# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heresy/version'

Gem::Specification.new do |spec|
  spec.name          = "heresy"
  spec.version       = Heresy::VERSION
  spec.authors       = ["Ellen Marie Dash"]
  spec.email         = ["me@duckie.co"]

  spec.summary       = %q{Bringing heretical technology to a Ruby near you!}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/duckinator/heresy"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Miscellaneous things.
  # NOTE: from relies indirectly on debug_inspector (via wot-utilities),
  #       which can't be installed inside of Bash on Windows. :(
  #spec.add_runtime_dependency "from", "~> 1.0.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "minitest", "~> 5.10"
end
