# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'colored_scripts/version'

Gem::Specification.new do |spec|
  spec.name          = "colored_scripts"
  spec.version       = ColoredScripts::VERSION
  spec.authors       = ["Gianluca Andreotti"]
  spec.email         = ["gianlucaatlas [delete me] @gmail.com"]
  spec.summary       = %q{Ultra-minimal library to simplify the use of colors in ruby scripts.}
  #spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = "https://github.com/3rror/colored_scripts"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2", ">= 2.2.10"
  spec.add_development_dependency "rake", "~> 12.3", ">= 12.3.3"

  spec.post_install_message = "WARNING: This gem is deprecated!"
end
