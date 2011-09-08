# -*- encoding: utf-8 -*-
require File.expand_path("../lib/confu/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "confu"
  s.version     = Confu::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Petyo Ivanov", "Krasimir Angelov"]
  s.email       = ["krasio@codingspree.net"]
  s.homepage    = "http://rubygems.org/gems/confu"
  s.summary     = "Yet another *fu - this time for rails configuration made easier"
  s.description = "Yet another *fu - this time for rails configuration made easier"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "confu"

  s.add_dependency "rails", ">= 3.0.0"
  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
