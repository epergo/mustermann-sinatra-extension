# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "mustermann-sinatra-extension"
  spec.version       = "1.0"
  spec.authors       = ["Konstantin Haase", "Zachary Scott", "Eloy Perez"]
  spec.email         = "sinatrarb@googlegroups.com"
  spec.summary       = "Mustermann extension for Sinatra"
  spec.description   = "Mustermann extension for Sinatra"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.1.0")

  spec.homepage = "https://github.com/sinatra/mustermann-sinatra-extension"
  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "mustermann", "~> 1.1.1"
  spec.add_dependency "mustermann-contrib", "~> 1.1.1"
  spec.add_dependency "sinatra", "~> 1"
end
