$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "event_world/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "event_world"
  s.version     = EventWorld::VERSION
  s.authors     = ["Lukasz Krystkowiak"]
  s.email       = ["lukasz.krystkowiak@gmail.com"]
  s.summary     = "EventWorld is a Rails Engine which displays realtime events on Google map."
  s.homepage    = "http://github.com/lukkry/event_world"

  s.files = Dir["{app,config,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "thin"
  s.add_dependency "faye"
  s.add_dependency "konf"
  s.add_dependency "gon"
  s.add_dependency "jquery-rails"
  s.add_dependency "coffee-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "webmock"
end
