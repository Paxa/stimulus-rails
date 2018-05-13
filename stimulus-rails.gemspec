
Gem.pre_install do |installer|
  lib = File.expand_path("../lib", __FILE__)
  require "#{lib}/stimulus-rails"
  remote_file = Stimulus.download!
  installer.spec.post_install_message = "stimulis-rails: Saved stimulus.js from #{remote_file}"
end


Gem::Specification.new do |spec|
  spec.name          = "stimulus-rails"
  spec.version       = "0.1"
  spec.authors       = ["Pavel Evstigneev"]
  spec.email         = ["pavel.evst@gmail.com"]
  spec.summary       = "A modest JavaScript framework for the HTML you already have"

  spec.homepage      = "https://github.com/Paxa/stimulus-rails"
  spec.license       = "MIT"

  spec.files = `git ls-files`.split("\n")
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 3"
end
