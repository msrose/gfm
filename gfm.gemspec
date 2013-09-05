Gem::Specification.new do |s|
  s.name = 'gfm'
  s.version = '0.1.3'
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
  s.add_runtime_dependency 'html-pipeline'
  s.add_runtime_dependency 'github-linguist'
  s.add_runtime_dependency 'httpclient'
end
