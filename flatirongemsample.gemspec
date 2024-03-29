lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "flatirongemsample/version"

Gem::Specification.new do |spec|
  spec.name          = "flatirongemsample"
  spec.version       = Flatirongemsample::VERSION
  spec.authors       = ["alexvirga"]
  spec.email         = ["alexander.virga@gmail.com"]

  spec.summary       = %q{my flatiron gem}
  spec.description   = %q{longer flatiron gem desc }
  spec.homepage      = "https://github.com/alexvirga/flatirongemexample.git"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
