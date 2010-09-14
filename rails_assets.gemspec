# -*- encoding: utf-8 -*-
require File.expand_path("../lib/rails_assets/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "rails_assets"
  s.version     = RailsAssets::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Yehuda Katz", "Carl Lerche"]
  s.email       = ["wycats@gmail.com", "me@carllerche.com"]
  s.homepage    = "http://github.com/carlhuda/assets"
  s.summary     = "Simple implementation of dynamic assets"
  s.description = "A Rails Engine that allows you to put assets in app/assets and use a Rails template engine like ERB. In combination with Rack::Cache, this will essentially cache the file on the " \
                  "first request, and use the cached version thereafter."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "rails_assets"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
