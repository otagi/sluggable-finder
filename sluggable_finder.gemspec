# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sluggable_finder}
  s.version = "2.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ismael Celis"]
  s.date = %q{2011-03-01}
  s.description = %q{This plugin allows models to generate a unique "slug" (url-enabled name) from any regular attribute. Add friendly URLs to your models with one line.}
  s.email = %q{ismaelct@gmail.com}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    ".gitignore",
     "History.txt",
     "Manifest.txt",
     "PostInstall.txt",
     "README.markdown",
     "Rakefile",
     "VERSION.yml",
     "lib/sluggable_finder.rb",
     "lib/sluggable_finder/finder.rb",
     "lib/sluggable_finder/orm.rb",
     "script/console",
     "script/destroy",
     "script/generate",
     "sluggable_finder.gemspec",
     "spec/db/.gitignore",
     "spec/log/.gitignore",
     "spec/sluggable_finder_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "tasks/db.rake",
     "tasks/rspec.rake"
  ]
  s.homepage = %q{http://github.com/ismasan/sluggable-finder}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Easy friendly URLs for your ActiveRecord models}
  s.test_files = [
    "spec/sluggable_finder_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 2.2.2"])
    else
      s.add_dependency(%q<activerecord>, [">= 2.2.2"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 2.2.2"])
  end
end

