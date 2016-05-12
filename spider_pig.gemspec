# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spider_pig/version'

Gem::Specification.new do |spec|
  spec.name          = "spider_pig"
  spec.version       = SpiderPig::VERSION
  spec.authors       = ["Luis Mendes"]
  spec.email         = ["lmmendes@gmail.com"]

  spec.summary       = %q{Spider Pig web crawler}
  spec.description   = %q{Spider Pig! Does whatever a spider pig does! Can he swing from a web? No he can't He's a pig Lookout! He is the spider pig!!}
  spec.homepage      = "https://github.com/lmmendes/spider_pig-ruby"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", "~> 1.6.4"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
