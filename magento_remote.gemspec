# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'magento_remote/version'

Gem::Specification.new do |spec|
  spec.name          = "magento_remote"
  spec.version       = MagentoRemote::VERSION
  spec.authors       = ["Felix Wolfsteller"]
  spec.email         = ["felix.wolfsteller@gmail.com"]
  spec.summary       = %q{Login to a magento shop and do stuff.}
  spec.description   = %q{Allows ordering through a (defaultish) magento web page.}
  spec.homepage      = 'https://github.com/fwolfst/magento_remote'
  spec.licenses      = ["MIT", "GPL-3.0+"]

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'mechanize', "~> 2.7"
  spec.add_dependency 'terminal-table', "~> 1.4"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  # cli tools should be configured by inifiles in 0.2.1
  spec.add_development_dependency "inifile"
end
