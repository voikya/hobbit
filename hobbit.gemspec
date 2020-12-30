# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hobbit/version'

Gem::Specification.new do |spec|
  spec.name          = 'hobbit'
  spec.version       = Hobbit::VERSION
  spec.authors       = ['Patricio Mac Adden']
  spec.email         = ['patriciomacadden@gmail.com']
  spec.description   = %q{A minimalistic microframework built on top of rack}
  spec.summary       = %q{A minimalistic microframework built on top of rack}
  spec.homepage      = 'https://github.com/patriciomacadden/hobbit'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'oktobertest'
  spec.add_development_dependency 'oktobertest-contrib'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'rake'

  spec.add_runtime_dependency 'rack'
end
