require File.expand_path('../lib/ruby-lint/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'ruby-lint'
  s.version     = RubyLint::VERSION
  s.date        = '2012-11-15'
  s.authors     = ['Yorick Peterse']
  s.email       = 'yorickpeterse@gmail.com'
  s.summary     = 'Static code analysis tool and linter for Ruby'
  s.homepage    = 'https://github.com/yorickpeterse/ruby-lint/'
  s.description = s.summary
  s.executables = ['ruby-lint']

  s.files = File.read(File.expand_path('../MANIFEST', __FILE__)).split("\n")

  s.has_rdoc              = 'yard'
  s.required_ruby_version = '>= 1.9.2'

  s.add_dependency('furnace', ['~> 0.4.0.beta.1'])

  s.add_development_dependency('rake')
  s.add_development_dependency('redcarpet', ['>= 2.1.1'])
  s.add_development_dependency('bacon', ['>= 1.2.0'])
  s.add_development_dependency('yard')
  s.add_development_dependency('pry-rescue')
  s.add_development_dependency('bacon-colored_output')
  s.add_development_dependency('simplecov')
end
