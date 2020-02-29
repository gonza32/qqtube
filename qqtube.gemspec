
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "qqtube/version"

Gem::Specification.new do |spec|
  spec.name          = "qqtube"
  spec.version       = Qqtube::VERSION
  spec.authors       = ["alizduwal"]
  spec.email         = ["amar@nbinfotech.com.np"]

  spec.summary       = %q{Qqtube is a ruby wrapper for qqtube}
  spec.description   = %q{Qqtube is a lightweight, flexible Ruby SDK for qqtube. (YOUTUBE VIEW SUPPLIER) }
  spec.homepage      = "https://www.qqtube.com/v1-api"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
