require 'ripper'

unless $:.include?(File.expand_path('../', __FILE__))
  $:.unshift(File.expand_path('../', __FILE__))
end

require 'ruby-lint/version'
require 'ruby-lint/node'
require 'ruby-lint/parser'
require 'ruby-lint/parser_error'
require 'ruby-lint/definition/ruby_object'
require 'ruby-lint/definition/ruby_method'
require 'ruby-lint/importer'
require 'ruby-lint/report'
require 'ruby-lint/iterator'
require 'ruby-lint/analyze/definitions'
