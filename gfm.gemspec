require File.expand_path('../lib/gfm/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'gfm'
  s.version = GFM::VERSION
  s.date = '2013-09-04'
  s.summary = 'GitHub Flavoured Markdown Previewer'
  s.description = 'Generates an HTML file from a GitHub Flavored Markdown file. Useful for previewing README files.'
  s.authors = ['Michael Rose']
  s.email = 'ekimsc1094@sympatico.ca'
  s.files = Dir['{lib}/**/*.rb']
  s.require_path = 'lib'
  s.homepage = 'https://github.com/msrose/gfm'
  s.license = 'MIT'
  s.executables << 'gfm'
  s.add_runtime_dependency 'html-pipeline', '~> 2.0'
  s.add_runtime_dependency 'github-linguist', '~> 2.10'
  s.add_runtime_dependency 'github-markdown', '~> 0.6'
  s.add_runtime_dependency 'sanitize', '~> 2.0'
  s.add_runtime_dependency 'httpclient', '~> 2.6'
  s.add_runtime_dependency 'gemoji', '~> 2.1'
  s.add_development_dependency 'rspec', '~> 3.3'
end
