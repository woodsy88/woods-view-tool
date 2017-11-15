
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "woods_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "woods_view_tool"
  spec.version       = WoodsViewTool::VERSION
  spec.authors       = ["“Andrew"]
  spec.email         = ["andrewwoods88@gmail.com"]

  spec.summary       = %q{Various view specific methods for applications i use}
  spec.description   = %q{proides generated HTML data for rails application}
  spec.homepage      = "https://devcamp.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
