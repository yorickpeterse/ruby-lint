require 'simplecov'

SimpleCov.configure do
  root         File.expand_path('../../../', __FILE__)
  command_name 'bacon'
  project_name 'ruby-lint'

  add_group 'Analysis'   , 'ruby-lint/analyze'
  add_group 'Definitions', 'ruby-lint/definition'
  add_group 'Formatters' , 'ruby-lint/formatter'

  add_filter 'spec'
  add_filter 'lib/ruby-lint/version'
end

SimpleCov.start
