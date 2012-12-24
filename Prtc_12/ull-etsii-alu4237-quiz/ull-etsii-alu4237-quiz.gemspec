# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ull-etsii-alu4237-quiz/version"

Gem::Specification.new do |s|
  s.name        = "ull-etsii-alu4237-quiz"
  s.version     = Ull::Etsii::Alu4237::Quiz::VERSION
  s.authors     = ["Julia92"]
  s.email       = ["lagunerita@hotmail.com"]
  s.homepage    = ""
  s.summary     = %q{test1}
  s.description = %q{test}

  s.rubyforge_project = "ull-etsii-alu4237-quiz"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
