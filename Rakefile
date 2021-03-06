require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "sluggable_finder"
    s.summary = %Q{Easy friendly URLs for your ActiveRecord models}
    s.email = "ismaelct@gmail.com"
    s.homepage = "http://github.com/ismasan/sluggable-finder"
    s.description = %(This plugin allows models to generate a unique "slug" (url-enabled name) from any regular attribute. Add friendly URLs to your models with one line.)
    s.authors = ["Ismael Celis"]
    s.add_dependency 'activerecord', ">= 2.2.2"
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = 'sluggable_finder'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib' << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |t|
    t.libs << 'test'
    t.test_files = FileList['test/**/*_test.rb']
    t.verbose = true
  end
rescue LoadError
  puts "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_files = FileList["spec/**/*_spec.rb"]
  t.spec_opts = %w{-f s -c -L mtime}
end

load File.join(File.dirname(__FILE__), 'tasks', 'db.rake')

task :default => :spec
