# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "slack/version"

Gem::Specification.new do |spec|
  spec.name          = "slack-incoming-webhooks-ruby"
  spec.version       = Slack::VERSION
  spec.authors       = ["naoto0822"]
  spec.email         = ["n.h.in.m.h@gmail.com"]

  spec.summary       = "slack incoming webhooks ruby client."
  spec.description   = "slack incoming webhooks ruby client."
  spec.homepage      = "https://github.com/naoto0822/slack-incoming-webhooks-ruby"
  spec.license       = "MIT"
  
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 2.4.0'

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "travis"
end
