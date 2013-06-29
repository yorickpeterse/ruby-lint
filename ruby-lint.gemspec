require File.expand_path('../lib/ruby-lint/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'ruby-lint'
  s.version     = RubyLint::VERSION
  s.date        = '2013-04-22'
  s.authors     = ['Yorick Peterse']
  s.email       = 'yorickpeterse@gmail.com'
  s.summary     = 'A linter and static code analysis tool for Ruby.'
  s.homepage    = 'https://github.com/yorickpeterse/ruby-lint/'
  s.description = s.summary
  s.executables = ['ruby-lint']

  s.files = File.read(File.expand_path('../MANIFEST', __FILE__)).split("\n")

  s.has_rdoc              = 'yard'
  s.required_ruby_version = '>= 1.9.3'

  s.add_dependency 'parser', ['~> 2.0.0.beta1']
  s.add_dependency 'slop'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'bacon', ['>= 1.2.0']
  s.add_development_dependency 'yard'
  s.add_development_dependency 'pry-rescue'
  s.add_development_dependency 'bacon-colored_output'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'rubygems-openpgp'
  s.add_development_dependency 'coveralls'

  # NOTE: This is to prevent Travis CI from soiling its pants. It's not a
  # really nice solution but it seems to be the only way (at least for now).
  if RUBY_PLATFORM != 'java'
    s.add_development_dependency 'redcarpet', ['>= 2.1.1']
  end
end
