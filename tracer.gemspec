# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tracer/version'

Gem::Specification.new do |spec|
  spec.name          = "tracer"
  spec.version       = Tracer::VERSION
  spec.authors       = ["raventid"]
  spec.email         = ["juliankul@gmail.com"]

  spec.summary       = %q{Simple and fast tracer for your Ruby code.}
  spec.description   = %q{Simple and fast tracer for your Ruby code. It's like puts debugging but on steroids.}
  spec.homepage      = "https://github.com/raventid/tracer"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.6"
  spec.add_development_dependency "pry"
end
