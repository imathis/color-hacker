path = "#{File.dirname(__FILE__)}/lib"
require File.join(path, 'version')

Gem::Specification.new do |gemspec|
  gemspec.name = "color-hacker"
  gemspec.version = ColorHacker::VERSION # Update the VERSION.yml file to set this.
  gemspec.date = "#{Time.now.year}-#{Time.now.month}-#{Time.now.day}" # Automatically update for each build
  gemspec.description = "Color Hacker is a Compass plugin which uses Sass color functions to find find the relationships between colors"
  gemspec.homepage = "http://github.com/imathis/color-hacker"
  gemspec.authors = ["Brandon Mathis"]
  gemspec.email = "brandon@imathis.com"
  gemspec.has_rdoc = false
  gemspec.require_paths = %w(lib)
  gemspec.rubygems_version = "1.3.6"
  gemspec.summary = "Converts a list of colors into a set of dependant color functions"

  gemspec.add_dependency 'compass', '>= 0.11'

  gemspec.files = %w(README.markdown VERSION.yml)
  gemspec.files += Dir.glob("lib/**/*")
  gemspec.files += Dir.glob("stylesheets/**/*")
end
