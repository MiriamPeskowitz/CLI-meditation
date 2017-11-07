
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "meditation/version"

Gem::Specification.new do |spec|
  spec.name          = "meditation"
  spec.version       = "0.1.4"
  spec.authors       = ["Miriam Peskowitz"]
  spec.email         = "miriam5000@gmail.com"

  spec.summary       = "Meditations to start your day, from Audiodharma.org."
  spec.description   = "CLI app that that scrapes five daily meditations so you can choose one."
  spec.homepage      = "https://github.com/MiriamPeskowitz/CLI-meditation"
  spec.license       = ["MIT"] #choosealicense.com/.

# is this the problem? http://guides.rubygems.org/specification-reference/#add_runtime_dependency 
#if spec.respond_to?(:metadata)
#     spec.metadata["allowed_push_host"] = {"https://rubygems.org"}
#   else
#     raise "RubyGems 2.0 or newer is required to protect against " \
#       "public gem pushes."
#   end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = ["meditation-start"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry",  "~> 0.11.2"
  spec.add_runtime_dependency "nokogiri", "~> 1.8.1"
  spec.add_runtime_dependency "require_all", "~> 1.4.0"
  
end
