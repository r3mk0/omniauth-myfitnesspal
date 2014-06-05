$:.push File.expand_path("../lib", __FILE__)
require "omniauth-myfitnesspal/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-myfitnesspal"
  s.version     = OmniAuth::Myfitnesspal::VERSION
  s.authors     = ["Jeff Moss"]
  s.email       = ["jeff.moss@octanner.com"]
  s.homepage    = "http://github.com/octanner/omniauth-myfitnesspal"
  s.summary     = %q{OmniAuth strategy for MyFitnessPal}
  s.description = %q{OmniAuth strategy for MyFitnessPal}

  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.1'
end
