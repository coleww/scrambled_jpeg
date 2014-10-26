# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scrambled_jpeg/version'

Gem::Specification.new do |spec|
  spec.name          = "scrambled_jpeg"
  spec.version       = ScrambledJpeg::VERSION
  spec.authors       = ["Cole Willsea"]
  spec.email         = ["coleww@gmail.com"]
  spec.summary       = %q{a ruby gem for scrambling jpeg/jpg files as though there were eggs.}
  spec.homepage      = "https://github.com/coleww/scrambled_jpeg"
  spec.license       = "MIT"

  spec.files         = Dir.glob("{bin,lib}/**/*") + %w(LICENSE.txt README.md Rakefile Gemfile)
  spec.executables   = ['scrambled_jpeg']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
