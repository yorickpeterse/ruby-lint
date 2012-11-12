require File.expand_path('../lib/rlint/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'ruby-lint'
  s.version     = Rlint::VERSION
  s.date        = '2012-11-12'
  s.authors     = ['Yorick Peterse']
  s.email       = 'yorickpeterse@gmail.com'
  s.summary     = 'Static code analysis tool and linter for Ruby'
  s.homepage    = 'https://github.com/yorickpeterse/rlint/'
  s.description = s.summary
  s.executables = ['rlint']

  s.files = File.read(File.expand_path('../MANIFEST', __FILE__)).split("\n")

  s.has_rdoc              = 'yard'
  s.required_ruby_version = '>= 1.9.2'

  s.add_development_dependency('rake', ['>= 0.9.2.2'])
  s.add_development_dependency('redcarpet', ['>= 2.1.1'])
  s.add_development_dependency('bacon', ['>= 1.1.0'])
  s.add_development_dependency('yard', ['>= 0.8.2.1'])
end
