
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nikita_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "nikita_view_tool"
  spec.version       = NikitaViewTool::VERSION
  spec.authors       = ["Nikita"]
  spec.email         = ["nlukjanov@gmail.com"]

  spec.summary       = %q{Various view specific methods for applications.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
end
