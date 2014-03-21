# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'focloir/version'

Gem::Specification.new do |spec|
  spec.name          = "focloir"
  spec.version       = Focloir::VERSION
  spec.authors       = ["JJ Buckley"]
  spec.email         = ["jj@bjjb.org"]
  spec.summary       = %q{A dictionary app/server}
  spec.description   = <<-DESC
A little app/library/server for scraping online dictionaries and (optionally)
caching the results and showing them in a standard kind of way.
  DESC
  spec.homepage      = "http://github.com/bjjb/focloir"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rake"
end
