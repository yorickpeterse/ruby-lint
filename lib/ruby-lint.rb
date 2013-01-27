require 'ripper'

unless $:.include?(File.expand_path('../', __FILE__))
  $:.unshift(File.expand_path('../', __FILE__))
end

require 'ruby-lint/version'
require 'ruby-lint/variable_predicates'
require 'ruby-lint/node'
require 'ruby-lint/parser'
require 'ruby-lint/parser_error'
require 'ruby-lint/definition/ruby_object'
require 'ruby-lint/definition/ruby_method'
require 'ruby-lint/importer'
require 'ruby-lint/report'
require 'ruby-lint/report/entry'
require 'ruby-lint/iterator'
require 'ruby-lint/definitions_builder'
require 'ruby-lint/helper/current_scope'
require 'ruby-lint/helper/constant_paths'

require 'ruby-lint/analyze/unused_variables'
require 'ruby-lint/analyze/shadowing_variables'
require 'ruby-lint/analyze/undefined_variables'

require 'ruby-lint/presenter/text'
require 'ruby-lint/presenter/json'
