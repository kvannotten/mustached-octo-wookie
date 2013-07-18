# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mustached_octo_wookie/version'

Gem::Specification.new do |spec|
  spec.name          = "mustached_octo_wookie"
  spec.version       = MustachedOctoWookie::VERSION
  spec.authors       = ["Kristof Vannotten"]
  spec.email         = ["kristof@vannotten.be"]
  spec.description   = %q{A utility library for IRC}
  spec.summary       = %q{mustached_octo_wookie is a utility library for the popular IRC.}
  spec.homepage      = "https://github.com/kvannotten/mustached_octo_wookie"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
