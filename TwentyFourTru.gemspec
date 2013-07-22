# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'TwentyFourTru/version'

Gem::Specification.new do |gem|
  gem.name          = "TwentyFourTru"
  gem.version       = TwentyFourTru::VERSION
  gem.authors       = ["Cache Hamm"]
  gem.email         = ["chamm@qualvu.com"]
  gem.description   = %q{24Tru Api}
  gem.summary       = %q{Login to 24tru.com/login and visit your profile to generate your api token}
  gem.homepage      = ""
  gem.add_development_dependency 'rspec'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
