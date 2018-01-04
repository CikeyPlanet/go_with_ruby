lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gofuncs/version"

Gem::Specification.new do |spec|
  spec.name          = "gofuncs"
  spec.version       = Gofuncs::VERSION
  spec.authors       = ["zx"]
  spec.email         = ["zx@huantengsmart.com"]

  spec.summary       = "A Demo Ruby Gem with Golang"
  spec.description   = "A Demo Ruby Gem with simple Golang"
  spec.homepage      = "https://github.com/CikeyPlanet/go_with_ruby/gem_ext/gofuncs"
  spec.license       = "MIT"

  spec.files         = Dir.glob("ext/**/*") + Dir.glob("lib/**/*.rb")
  spec.extensions    = ["ext/gofuncs/extconf.rb"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rake-compiler', '~> 0'
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "ffi", '1.9.18'
end
