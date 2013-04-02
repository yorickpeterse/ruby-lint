require 'ripper'
require 'ast/node'

require_relative 'ruby-lint/extensions/string'

require_relative 'ruby-lint/variable_predicates'
require_relative 'ruby-lint/node'
require_relative 'ruby-lint/parser'
require_relative 'ruby-lint/parser_error'
require_relative 'ruby-lint/iterator'
require_relative 'ruby-lint/definitions_builder'
require_relative 'ruby-lint/constant_loader'

require_relative 'ruby-lint/configuration'
require_relative 'ruby-lint/version'
require_relative 'ruby-lint/base'

require_relative 'ruby-lint/definition/ruby_object'
require_relative 'ruby-lint/definition/ruby_method'
require_relative 'ruby-lint/definitions/core'

require_relative 'ruby-lint/helper/conversion'
require_relative 'ruby-lint/helper/current_scope'
require_relative 'ruby-lint/helper/constant_paths'
require_relative 'ruby-lint/helper/methods'

require_relative 'ruby-lint/analyze/unused_variables'
require_relative 'ruby-lint/analyze/shadowing_variables'
require_relative 'ruby-lint/analyze/undefined_variables'
require_relative 'ruby-lint/analyze/undefined_methods'
require_relative 'ruby-lint/analyze/argument_amount'

require_relative 'ruby-lint/report'
require_relative 'ruby-lint/report/entry'

require_relative 'ruby-lint/presenter/text'
require_relative 'ruby-lint/presenter/json'
