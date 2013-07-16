require 'simplecov'

SimpleCov.configure do
  root         File.expand_path('../../../', __FILE__)
  command_name 'rspec'
  project_name 'ruby-lint'

  add_group 'Analysis', 'ruby-lint/analysis'
  add_group 'Definition Containers', 'ruby-lint/definition'
  add_group 'Definition Builders', 'ruby-lint/definition_builder'
  add_group 'Presenters', 'ruby-lint/presenter'

  add_filter 'spec'
  add_filter 'lib/ruby-lint/version'
  add_filter 'lib/ruby-lint/definitions'
end

SimpleCov.start
