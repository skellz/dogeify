# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dogeify/version'

Gem::Specification.new do |spec|
  spec.name          = "dogeify"
  spec.version       = Dogeify::VERSION
  spec.authors       = ["skellz"]
  spec.email         = ["sherwin.kelly@gmail.com"]
  spec.summary       = "Dogeifys input"
  spec.description   = "Adds words from the doge meme to a string."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "engtagger"
end