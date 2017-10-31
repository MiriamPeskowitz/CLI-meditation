
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "meditation/version"

Gem::Specification.new do |spec|
  spec.name          = "meditation"
  spec.version       = "0.1.1"
  spec.authors       = ["Miriam Peskowitz"]
  spec.email         = ["miriam5000@gmail.com"]

  spec.summary       = %q{Meditations to start your day.}
  
  spec.homepage      = "https://github.com/MiriamPeskowitz/CLI-meditation"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry",  "~> 0.11.2"
  spec.add_development_dependency "nokogiri", "~> 1.8.1"
  spec.add_development_dependency "require_all", "~> 1.4.0"
  
end
