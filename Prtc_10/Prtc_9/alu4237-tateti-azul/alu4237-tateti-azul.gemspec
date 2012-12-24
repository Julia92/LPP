# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "alu4237-tateti-azul/version"

Gem::Specification.new do |s|
  s.name        = "alu4237-tateti-azul"
  s.version     = Alu4237::Tateti::Azul::VERSION
  s.authors     = ["Julia92"]
  s.email       = ["lagunerita@hotmail.com"]
  s.homepage    = ""
  s.summary     = %q{tateti}
  s.description = %q{tateti}

  s.rubyforge_project = "alu4237-tateti-azul"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
