$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "event_world/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "event_world"
  s.version     = EventWorld::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of EventWorld."
  s.description = "TODO: Description of EventWorld."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "jquery-rails"
  s.add_dependency "coffee-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "webmock"
end
