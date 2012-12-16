require 'ripper'

unless $:.include?(File.expand_path('../', __FILE__))
  $:.unshift(File.expand_path('../', __FILE__))
end

require 'ruby-lint/version'
require 'ruby-lint/node'
require 'ruby-lint/parser'
require 'ruby-lint/parser_error'

require 'ruby-lint/iterator'
require 'ruby-lint/callback'
require 'ruby-lint/report'
require 'ruby-lint/definition'
require 'ruby-lint/constant_importer'
require 'ruby-lint/formatter/text'
require 'ruby-lint/helper/scoping'
require 'ruby-lint/helper/definition_resolver'
require 'ruby-lint/analyze/coding_style'
require 'ruby-lint/analyze/definitions'
require 'ruby-lint/analyze/unused_variables'
require 'ruby-lint/analyze/undefined_variables'
require 'ruby-lint/analyze/shadowing_variables'
require 'ruby-lint/analyze/method_validation'
require 'ruby-lint/options'
