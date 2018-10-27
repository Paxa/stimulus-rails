Gem::Specification.new do |spec|
  spec.name          = "stimulus-rails"
  spec.version       = "1.1.0"
  spec.authors       = ["Pavel Evstigneev"]
  spec.email         = ["pavel.evst@gmail.com"]
  spec.summary       = "A modest JavaScript framework for the HTML you already have"

  spec.homepage      = "https://github.com/Paxa/stimulus-rails"
  spec.license       = "MIT"

  spec.files = `git ls-files`.split("\n")
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 3"
end
