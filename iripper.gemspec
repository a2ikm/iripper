
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "iripper/version"

Gem::Specification.new do |spec|
  spec.name          = "iripper"
  spec.version       = IRipper::VERSION
  spec.authors       = ["Masato Ikeda"]
  spec.email         = ["masato.ikeda@gmail.com"]

  spec.summary       = %q{Read, Parse, Print, Loop.}
  spec.homepage      = "https://github.com/a2ikm/iripper"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
