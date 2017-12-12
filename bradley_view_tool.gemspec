
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bradley_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "bradley_view_tool"
  spec.version       = BradleyViewTool::VERSION
  spec.authors       = ["Jordan Hudgens"]
  spec.email         = ["jordan@devcamp.com"]

  spec.summary       = %q{Making a new gem for viewing}
  spec.description   = %q{Provides generated HTML data for rails apps}
  spec.homepage      = "stuff"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
