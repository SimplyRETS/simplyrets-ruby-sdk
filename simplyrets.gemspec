# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
$:.push File.expand_path("../models", __FILE__)
require "simplyrets/version"

Gem::Specification.new do |s|
  s.name        = "simplyrets"
  s.version     = SimplyRets::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Christopher Reichert", "Cody Reichert"]
  s.email       = ["christopher@simplyrets.com", "cody@simplyrets.com"]
  s.homepage    = "https://simplyrets.com"
  s.summary     = %q{SimplyRETS Ruby SDK}
  s.description = %q{This gem provides a SimplyRETS SDK for creating real estate software with RETS data}

  s.add_dependency 'typhoeus', '>=0.2.1'
  s.add_dependency 'addressable', '>=2.3.4'
  s.add_dependency 'json', '>=1.8'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'bundler'

  s.files         = `find *`.split("\n").uniq.sort.select{|f| !f.empty? }
  s.require_paths = ["lib", "models"]
end
