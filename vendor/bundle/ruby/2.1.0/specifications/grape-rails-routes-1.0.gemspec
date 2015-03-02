# -*- encoding: utf-8 -*-
# stub: grape-rails-routes 1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "grape-rails-routes"
  s.version = "1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["P.S.V.R"]
  s.date = "2014-07-24"
  s.description = "After you mount Grape API routes into Rails, Grape API routes would normally not be printed via `rake routes` or `/rails/info/routes`. This gem adds routes printing for Grape with Rails."
  s.email = ["pmq2001@gmail.com"]
  s.homepage = "https://github.com/pmq20/grape-rails-routes"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubygems_version = "2.4.6"
  s.summary = "After you mount Grape API routes into Rails, Grape API routes would normally not be printed via `rake routes` or `/rails/info/routes`. This gem adds routes printing for Grape with Rails."

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 4.1.4"])
    else
      s.add_dependency(%q<rails>, [">= 4.1.4"])
    end
  else
    s.add_dependency(%q<rails>, [">= 4.1.4"])
  end
end
