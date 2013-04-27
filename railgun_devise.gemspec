$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "railgun_devise/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "railgun_devise"
  s.version     = RailgunDevise::VERSION
  s.authors     = ["Tom Beynon"]
  s.email       = ["tom@lateralstudios.com"]
  s.homepage    = "http://lateralstudios.com"
  s.summary     = "Devise authentication for Railgun"
  s.description = "Devise authentication module for Railgun."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"

  s.add_dependency "railgun"
  s.add_dependency "devise"
end
